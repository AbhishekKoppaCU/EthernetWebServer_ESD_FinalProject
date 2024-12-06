/*
 * Eth.h
 *
 *  Created on: Dec 1, 2024
 *      Author: Abhishek
 */

#ifndef ETH_H_
#define ETH_H_


#include "global.h"
#include "arp.h"
#include "spi.h"
#include "commands.h"

#include <stdint.h>
#include <stddef.h>
#define ETH_TYPE_ARP  0x0806
#define ETH_TYPE_IPV4 0x0800
typedef struct {
    uint8_t dest_mac[6];
    uint8_t src_mac[6];
    uint16_t eth_type;
} EthernetHeader;
uint16_t read_packet(uint8_t *buffer);
void eth_send_frame(uint8_t *payload, uint16_t payload_len, uint16_t eth_type, uint8_t *dest_mac);
void eth_receive_frame(uint8_t *buffer, uint16_t *payload_len, uint16_t *eth_type, uint8_t *src_mac);
#endif /* ETH_H_ */
