/*
 * icmp.h
 *
 *  Created on: Dec 2, 2024
 *      Author: nadgi
 */

#ifndef ICMP_H_
#define ICMP_H_
#include "global.h"

#include "stm32f0xx.h"
#include <stdio.h>
#include <stdlib.h>
typedef struct {
    uint8_t type;
    uint8_t code;
    uint16_t checksum;
    uint16_t id;
    uint16_t sequence;
} IcmpHeader;
uint16_t checksum(const void *data, uint16_t length);
void icmp_echo_reply(uint8_t *rx_payload, uint16_t rx_len, uint8_t *src_ip);

#endif /* ICMP_H_ */
