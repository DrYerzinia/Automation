#include "hotp.h"

long calc_hotp(const uint8_t *key, uint8_t len, uint64_t counter){

	uint8_t *hash;
	uint8_t i;

	uint8_t buf[8];

	for(i = 0; i < 8; i++)
		buf[i] = ((uint8_t*)&counter)[7 - i];

	sha1 sha_hash;

	sha1_init_hmac(&sha_hash, key, len);
	sha1_write_data(&sha_hash, buf, 8);
	hash = sha1_result_hmac(&sha_hash);

	int offset = hash[19] & 0xF;
	long otp = 0;
	for(i = 0; i < 4; ++i){
		otp = otp << 8;
		otp = otp | hash[offset + i];
	}

	otp = otp & 0x7FFFFFFF;

	return otp;

}

void hotp_init(hotp *self, const uint8_t *key, uint8_t len, uint64_t start){

	memcpy(self->key, key, len);
	self->key_len = len;
	self->counter = start;
	self->enabled = true;

}

long hotp_next(hotp *self){

	return calc_hotp(self->key, self->key_len, self->counter++);

}

bool hotp_check(hotp *self, int value){

  long val = calc_hotp(self->key, self->key_len, self->counter);
  if(value == val){
    self->counter++;
    return true;
  }
  else {
    return false;
  }

}

