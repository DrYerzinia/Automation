#ifndef SHA1_H
#define SHA1_H

#include <inttypes.h>
#include <string.h>
#include "sha1.h"

#define HASH_LENGTH 20
#define BLOCK_LENGTH 64

typedef union {

  uint8_t b[BLOCK_LENGTH];
  uint32_t w[BLOCK_LENGTH/4];

} _buffer;

typedef union {

  uint8_t b[HASH_LENGTH];
  uint32_t w[HASH_LENGTH/4];

} _state;

typedef struct {

    _buffer buffer;
    _state state;
    uint8_t buffer_offset;
    uint32_t byte_count;
    uint8_t key_buffer[BLOCK_LENGTH];
    uint8_t inner_hash[HASH_LENGTH];
    
} sha1;

#ifdef __cplusplus
extern "C" {
#endif

void sha1_write_data(sha1 *self, const uint8_t *data, uint8_t len);
void sha1_write(sha1 *self, const uint8_t data);
void sha1_init_hmac(sha1 *self, const uint8_t* key, int key_length);
uint8_t* sha1_result_hmac(sha1 *self);

#ifdef __cplusplus
}
#endif

#endif

