#include "sha1.h"

#define SHA1_K0 0x5a827999
#define SHA1_K20 0x6ed9eba1
#define SHA1_K40 0x8f1bbcdc
#define SHA1_K60 0xca62c1d6

static const uint8_t sha1_init_state[] = {

	0x01, 0x23, 0x45, 0x67, // H0
	0x89, 0xab, 0xcd, 0xef, // H1
	0xfe, 0xdc, 0xba, 0x98, // H2
	0x76, 0x54, 0x32, 0x10, // H3
	0xf0, 0xe1, 0xd2, 0xc3  // H4

};

void sha1_init(sha1 *self){

	memcpy(self->state.b, sha1_init_state, HASH_LENGTH);
	self->byte_count = 0;
	self->buffer_offset = 0;

}

static uint32_t rol32(uint32_t number, uint8_t bits){

	return ((number << bits) | (number >> (32 - bits)));

}

static void sha1_hash_block(sha1 *self){

	uint8_t i;
	uint32_t a, b, c, d, e, t;

	a = self->state.w[0];
	b = self->state.w[1];
	c = self->state.w[2];
	d = self->state.w[3];
	e = self->state.w[4];

	for(i = 0; i < 80; i++){

		if(i >= 16){

			t =   self->buffer.w[(i + 13) & 15]
				^ self->buffer.w[(i + 8) & 15]
				^ self->buffer.w[(i + 2) & 15]
				^ self->buffer.w[i & 15];
			self->buffer.w[i & 15] = rol32(t, 1);

		}

		if(i < 20){
			t = (d ^ (b & (c ^ d))) + SHA1_K0;
		} else if(i < 40){
			t = (b ^ c ^ d) + SHA1_K20;
		} else if(i < 60){
			t = ((b & c) | (d & (b | c))) + SHA1_K40;
		} else {
			t = (b ^ c ^ d) + SHA1_K60;
		}

		t += rol32(a, 5) + e + self->buffer.w[i & 15];
		e = d;
		d = c;

		c = rol32(b, 30);
		b = a;
		a = t;

	}

	self->state.w[0] += a;
	self->state.w[1] += b;
	self->state.w[2] += c;
	self->state.w[3] += d;
	self->state.w[4] += e;

}

static void sha1_add_uncounted(sha1 *self, uint8_t data){

	self->buffer.b[self->buffer_offset ^ 3] = data;
	self->buffer_offset++;

	if(self->buffer_offset == BLOCK_LENGTH){
		sha1_hash_block(self);
		self->buffer_offset = 0;
	}

}

void sha1_write(sha1 *self, uint8_t data){

	++self->byte_count;
	sha1_add_uncounted(self, data);

}

void sha1_write_data(sha1 *self, const uint8_t *data, uint8_t len){

	uint8_t i;

	for(i = 0; i < len; i++) sha1_write(self, data[i]);

}

static void sha1_pad(sha1 *self){

	// Implement SHA-1 padding (fips180-2 §5.1.1)

	// Pad with 0x80 followed by 0x00 until the end of the block
	sha1_add_uncounted(self, 0x80);
	while(self->buffer_offset != 56) sha1_add_uncounted(self, 0x00);

	// Append length in the last 8 bytes
	sha1_add_uncounted(self, 0); // We're only using 32 bit lengths
	sha1_add_uncounted(self, 0); // But SHA-1 supports 64 bit lengths
	sha1_add_uncounted(self, 0); // So zero pad the top bits
	sha1_add_uncounted(self, self->byte_count >> 29); // Shifting to multiply by 8
	sha1_add_uncounted(self, self->byte_count >> 21); // as SHA-1 supports bitstreams as well as
	sha1_add_uncounted(self, self->byte_count >> 13); // byte.
	sha1_add_uncounted(self, self->byte_count >> 5);
	sha1_add_uncounted(self, self->byte_count << 3);

}


uint8_t* sha1_result(sha1 *self){

	uint8_t i;

	// Pad to complete the last block
	sha1_pad(self);
  
	// Swap byte order back
	for(i = 0; i < 5; i++){

		uint32_t a, b;

		a = self->state.w[i];
		b = a << 24;
		b |= (a << 8) & 0x00ff0000;
		b |= (a >> 8) & 0x0000ff00;
		b |= a >> 24;

		self->state.w[i] = b;

	}
  
	// Return pointer to hash (20 characters)
	return self->state.b;

}

#define HMAC_IPAD 0x36
#define HMAC_OPAD 0x5c

void sha1_init_hmac(sha1 *self, const uint8_t* key, int key_length){

	uint8_t i;

	memset(self->key_buffer, 0, BLOCK_LENGTH);

	if(key_length > BLOCK_LENGTH){

		// Hash long keys
		sha1_init(self);
		for(;key_length--;) sha1_write(self, *key++);

		memcpy(self->key_buffer, sha1_result(self), HASH_LENGTH);

	} else {

		// Block length keys are used as is
		memcpy(self->key_buffer, key, key_length);

	}

	// Start inner hash
	sha1_init(self);

	for(i = 0; i < BLOCK_LENGTH; i++){
		sha1_write(self, self->key_buffer[i] ^ HMAC_IPAD);
	}

}

uint8_t* sha1_result_hmac(sha1 *self){

	uint8_t i;

	// Complete inner hash
	memcpy(self->inner_hash, sha1_result(self), HASH_LENGTH);

	// Calculate outer hash
	sha1_init(self);

	for(i = 0; i < BLOCK_LENGTH; i++) sha1_write(self, self->key_buffer[i] ^ HMAC_OPAD);
	for(i = 0; i < HASH_LENGTH; i++) sha1_write(self, self->inner_hash[i]);

	return sha1_result(self);

}

