#ifndef HOTP_H
#define HOTP_H

#include <inttypes.h>
#include <stdbool.h>

#include "sha1.h"

#define MAX_KEY_LENGTH 20

typedef struct {

        uint8_t enabled;
  	uint8_t reserved[2];
	uint8_t key[MAX_KEY_LENGTH];
	uint8_t key_len;
	uint64_t counter;

} hotp;

#ifdef __cplusplus
extern "C" {
#endif

long calc_hotp(const uint8_t *key, uint8_t len, uint64_t counter);
void hotp_init(hotp *self, const uint8_t *key, uint8_t len, uint64_t start);
long hotp_next(hotp *self);
bool hotp_check(hotp *self, int value);

#ifdef __cplusplus
}
#endif

#endif

