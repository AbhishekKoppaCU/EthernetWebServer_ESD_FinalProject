/*
 * udp.h
 *
 *  Created on: Dec 2, 2024
 *      Author: nadgi
 */

#ifndef UDP_H_
#define UDP_H_
#include "global.h"

#include "stm32f0xx.h"
#include <stdio.h>
#include <stdlib.h>
#
typedef struct {
    uint16_t src_port;
    uint16_t dest_port;
    uint16_t length;
    uint16_t checksum;
} UdpHeader;
void ip_send(uint8_t *data, uint16_t length, uint8_t protocol, uint8_t *dest_ip);
void udp_send(uint8_t *payload, uint16_t payload_len, uint16_t dest_port, uint8_t *dest_ip);

#endif /* UDP_H_ */
