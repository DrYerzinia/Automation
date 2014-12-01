#include <RFduinoBLE.h>
#include <inttypes.h>
#include <string.h>
#include <Wire.h>

#include "hotp.h"

#define TRIAC_PIN 2
#define SWITCH_PIN 3
#define SCL_PIN 5
#define SDA_PIN 6

#define MB85RC_ADDRESS 0x50
#define MB85RC_SLAVE_ID 0xF8

#define FRAM_SIZE 512
#define HOTP_BLOCKS FRAM_SIZE / sizeof(hotp)

#define COMMAND_BUFFER_SIZE 40
#define RANDOM_BUFFER_SIZE 4

#define ON 0x01
#define OFF 0x02
#define DISABLE_SWITCH 0x03
#define ENABLE_SWITCH 0x04
#define SPOOKY_MODE 0x05

hotp hotp_clients[HOTP_BLOCKS];

char command_buffer[COMMAND_BUFFER_SIZE];
uint8_t command_buffer_pos;

uint8_t random_buffer[RANDOM_BUFFER_SIZE];
uint8_t random_buffer_pos;

uint8_t mode = OFF;
uint8_t state = OFF;

uint8_t switch_state;

void triac_on(){
    state = ON;
    digitalWrite(TRIAC_PIN, HIGH);
}

void triac_off(){
  state = OFF;
  digitalWrite(TRIAC_PIN, LOW);
}

void triac_toggle(){

  if(state == OFF)
    triac_on();
  else if(state == ON)
    triac_off();

}

int switch_isr(uint32_t ulPin){

  Serial.print("Switch Toggle\n\r");

  if(mode != SPOOKY_MODE && mode != DISABLE_SWITCH){
    triac_toggle();
  }

  return 0;

}

void setup() {

  Serial.begin(9600);

  pinMode(SWITCH_PIN, INPUT_PULLUP);
  pinMode(TRIAC_PIN, OUTPUT);
  digitalWrite(TRIAC_PIN, LOW);

  switch_state = digitalRead(SWITCH_PIN);

  //RFduino_pinWakeCallback(SWITCH_PIN, HIGH, switch_isr);
  //NVIC_EnableIRQ(GPIOTE_IRQn);
  //NRF_GPIOTE->CONFIG[0] =  (GPIOTE_CONFIG_POLARITY_Toggle << GPIOTE_CONFIG_POLARITY_Pos)
  //            | (SWITCH_PIN << GPIOTE_CONFIG_PSEL_Pos)
  //            | (GPIOTE_CONFIG_MODE_Event << GPIOTE_CONFIG_MODE_Pos);
  //NRF_GPIOTE->INTENSET = GPIOTE_INTENSET_IN0_Set << GPIOTE_INTENSET_IN0_Pos;

  Wire.begin();

  for(int i = 0; i < HOTP_BLOCKS; i++)
    read_hotp(&hotp_clients[i], i);

  RFduinoBLE.customUUID = "ac85f920-76bb-11e4-b116-123b93f75cba";
  RFduinoBLE.advertisementData = "ac_control";
  RFduinoBLE.advertisementInterval = 2000; // 2 seconds
  RFduinoBLE.begin();

  command_buffer_pos = 0;

}

void RFduinoBLE_onConnect(){
}

void RFduinoBLE_onDisconnect(){
}

void RFduinoBLE_onReceive(char *data, int len){

  Serial.print(len);
  Serial.print("\n\r");

  if(len >= 6){

    uint8_t cmd = data[1];
    uint8_t idx = data[2];

    int val = 0;
    val = (val << 8) + data[3];
    val = (val << 8) + data[4];
    val = (val << 8) + data[5];
    val = (val << 8) + data[6];

    if(idx < HOTP_BLOCKS){

      if(hotp_clients[idx].enabled){

        Serial.print("Command: ");
        Serial.print(cmd);
        Serial.print("\n\rHMAC: ");
        Serial.print(val);
        Serial.print("\n\r");
    
        bool match = hotp_check(&hotp_clients[idx], val);
    
        Serial.print("Status: ");
        Serial.print(match);
        Serial.print("\n\r");
    
        if(match){
    
          write_hotp_counter(&hotp_clients[idx], idx);

          if(cmd == ON){
            digitalWrite(TRIAC_PIN, HIGH);
            if(mode == SPOOKY_MODE)
              mode = ON;
          } else if(cmd == OFF) {
            digitalWrite(TRIAC_PIN, LOW);
            if(mode == SPOOKY_MODE)
              mode = OFF;
          } else if(cmd == SPOOKY_MODE){
            mode = SPOOKY_MODE;
          } else if(cmd == DISABLE_SWITCH){
            mode = DISABLE_SWITCH;
          } else if(cmd == ENABLE_SWITCH){
            mode = ENABLE_SWITCH;
          }
    
        } else {
          Serial.print("Bad OTP\n\r");
        }
      } else {
        Serial.print("User ID not enabled\n\r");
      }

    } else {
      Serial.print("User ID out of range\n\r");
    }

  } else {
      Serial.print("Message to short\n\r");
  }

}

void print_hotp(hotp *_hotp){

  Serial.print("Enabled: ");
  Serial.print(_hotp->enabled);
  Serial.print("\n\r");
  Serial.print("Key: ");
  for(uint8_t i = 0; i < _hotp->key_len; i++)
    Serial.print((char) _hotp->key[i]);
  Serial.print("\n\r");
  Serial.print("Counter: ");
  Serial.print((long)_hotp->counter);
  Serial.print("\n\r");

}

void write_hotp_counter(hotp *_hotp, uint8_t idx){

  uint8_t addr = MB85RC_ADDRESS;
  if((idx * sizeof(hotp)) + offsetof(hotp, counter) >= 0x100)
    addr |= 0x02;

  Wire.beginTransmission(addr);
  Wire.write(((idx * sizeof(hotp))  + offsetof(hotp, counter)) % 0x100);

  for(uint8_t i = 0; i < sizeof(uint64_t); i++)
    Wire.write(((uint8_t*)&(_hotp->counter))[i]);

  Wire.endTransmission();

}

void write_hotp(hotp *_hotp, uint8_t idx){

  uint8_t addr = MB85RC_ADDRESS;
  if(idx * sizeof(hotp) >= 0x100)
    addr |= 0x02;

  Wire.beginTransmission(addr);
  Wire.write((idx * sizeof(hotp)) % 0x100);

  for(uint8_t i = 0; i < sizeof(hotp); i++)
    Wire.write(((uint8_t*)_hotp)[i]);

  Wire.endTransmission();

}

void read_hotp(hotp *_hotp, uint8_t idx){

  uint8_t addr = MB85RC_ADDRESS;
  if(idx * sizeof(hotp) >= 0x100)
    addr |= 0x02;

  Wire.beginTransmission(addr);
  Wire.write((idx * sizeof(hotp)) % 0x100);
  Wire.endTransmission();

  Wire.requestFrom(addr, (uint8_t) sizeof(hotp));

  for(uint8_t i = 0; i < sizeof(hotp); i++)
    ((uint8_t*)_hotp)[i] = Wire.read();

}

void get_fram_id(uint16_t* manufacturer_id, uint16_t* product_id){

  uint8_t a[3] = {0, 0, 0};

  Wire.beginTransmission(MB85RC_SLAVE_ID >> 1);
  Wire.write(MB85RC_ADDRESS << 1);
  Wire.endTransmission(false);

  Wire.requestFrom(MB85RC_SLAVE_ID >> 1, 3);
  a[0] = Wire.read();
  a[1] = Wire.read();
  a[2] = Wire.read();

  *manufacturer_id = (a[0] << 4) + (a[1] >> 4);
  *product_id = ((a[1] & 0x0F) << 8) + a[2];

}

bool check_idx(int idx){

  if(idx >= 0 && idx < HOTP_BLOCKS)
    return true;
  else {
    Serial.print("Bad index: ");
    Serial.print(idx);
    Serial.print("\n\r");
  }
  return false;

}

void proccess_command_char(char c){

  switch(c){
    case 0x0A:
    case 0x0D:
      Serial.print("\n\r");
      command_buffer[command_buffer_pos] = '\0';
      if(strcmp(command_buffer, "next") == 0){
        Serial.print("HOTP: ");
        Serial.print(hotp_next(&hotp_clients[0]));
        write_hotp_counter(&hotp_clients[0], 0);
        Serial.print("\n\r");
      }
      else if(strncmp(command_buffer, "hotp_set_key", 12) == 0){
        char * space = strchr(&(command_buffer[13]), ' ');
        if(space > 0){

          *space = '\0';
          int idx = atoi(&(command_buffer[13]));

          if(check_idx(idx)){

            int len = strlen(space + 1);
            if(len <= MAX_KEY_LENGTH){
              memcpy(hotp_clients[idx].key, space + 1, len);
              hotp_clients[idx].key_len = len;
              write_hotp(&hotp_clients[idx], idx);
            } else {
              Serial.print("Key to long\n\r");
            }

          }

        } else {
          Serial.print("Not enough arguments\n\r");
        }
      }
      else if(strncmp(command_buffer, "switch_read", 11) == 0){
        Serial.print("Switch state: ");
        Serial.print(digitalRead(SWITCH_PIN));
        Serial.print("\n\r");
      }
      else if(strncmp(command_buffer, "state", 5) == 0){
        Serial.print("State: ");
        Serial.print(state);
        Serial.print("\n\r");
      }
      else if(strncmp(command_buffer, "hotp_reset_counter", 18) == 0){
        int idx = atoi(&(command_buffer[19]));
        if(check_idx(idx)){
          hotp_clients[idx].counter = 0;
          write_hotp(&hotp_clients[idx], idx);
        }
      }
      else if(strncmp(command_buffer, "hotp_enable", 11) == 0){
        int idx = atoi(&(command_buffer[12]));
        if(check_idx(idx)){
          hotp_clients[idx].enabled = true;
          write_hotp(&hotp_clients[idx], idx);
        }
      }
      else if(strncmp(command_buffer, "hotp_disable", 12) == 0){
        int idx = atoi(&(command_buffer[13]));
        if(check_idx(idx)){
          hotp_clients[idx].enabled = false;
          write_hotp(&hotp_clients[idx], idx);
        }
      }
      else if(strncmp(command_buffer, "hotp_info", 9) == 0){
        int idx = atoi(&(command_buffer[10]));
        if(check_idx(idx))
          print_hotp(&hotp_clients[idx]);
      }
      else if(strcmp(command_buffer, "id") == 0){
        Serial.print("ID: ");
        Serial.print((long) getDeviceId());
        Serial.print("\n\r");
      }
      else if(strcmp(command_buffer, "framid") == 0){

        uint16_t manufacturer_id;
        uint16_t product_id;
        get_fram_id(&manufacturer_id, &product_id);

        Serial.print("Manufacturer: ");
        Serial.print(manufacturer_id);
        Serial.print("\n\r");

        Serial.print("Product: ");
        Serial.print(product_id);
        Serial.print("\n\r");

      }
      else if(strcmp(command_buffer, "off") == 0){
        triac_off();
        mode = ON;
      }
      else if(strcmp(command_buffer, "on") == 0){
        triac_on();
        mode = OFF;
      }
      else if(strcmp(command_buffer, "toggle") == 0){
        triac_toggle();
      }
      else if(strcmp(command_buffer, "disable_switch") == 0){
        mode = DISABLE_SWITCH;
      }
      else if(strcmp(command_buffer, "enable_switch") == 0){
        mode = ENABLE_SWITCH;
      }
      else if(strcmp(command_buffer, "spooky") == 0){
        mode = SPOOKY_MODE;
      }
      else {
        Serial.print("Unknown Command...\n\r");
      }
      command_buffer_pos = 0;
      break;
    case 0x7F:
    case 0x08:
      if(command_buffer_pos > 0){
        command_buffer_pos--;
        Serial.print(c);
      }
      break;
    default:
      command_buffer[command_buffer_pos++] = c;
      if(command_buffer_pos == COMMAND_BUFFER_SIZE)
        command_buffer_pos--;
      else Serial.print(c);
      break;
  }

}

unsigned long last_time;
long rand_num = 0;

void loop() {

  uint8_t new_switch_state = digitalRead(SWITCH_PIN);
  if(new_switch_state != switch_state){
    switch_isr(SWITCH_PIN);
    switch_state = new_switch_state;
  }

  if(mode == SPOOKY_MODE){
    unsigned long cur_time = millis();
    if(last_time + rand_num < cur_time){
      triac_toggle();
      last_time = cur_time;
      rand_num = random(1000);
      if(rand_num == 0)
        rand_num = 1;
      rand_num = (3 - log(rand_num)) * 333;
    }
  }

  if(Serial.available() != 0)
    proccess_command_char(Serial.read());

}

