
/*
 * tcp.h
 *
 *  Created on: Dec 6, 2024
 *      Author: nadgi
 */

#ifndef TCP_H_
#define TCP_H_

#include <stdint.h>
#include <string.h>
//#include "global.h"
#include "Eth.h"
#include <stdint.h>
// Define constants for header sizes
#define ETHERNET_HEADER_SIZE 14
#define IP_HEADER_SIZE 20
#define TCP_HEADER_SIZE 20
#define MAX_PACKET_SIZE 1500

#define IP_HEADER_LEN 20 // IP header length (without options)
#define IP_CHECKSUM_P 24

#define IP_SRC_P 26
#define IP_DST_P 30
#define IP_P 14 // Start of IP header
#define IP_TOTLEN_H_P 16
#define IP_TOTLEN_L_P 17

#define IP_PROTO_TCP 0x06
#define TCP_FLAGS_P 47
#define TCP_SEQ_NUM_P 38
#define TCP_DST_PORT_H_P 36
#define TCP_DST_PORT_L_P 37
#define TCP_SRC_PORT_H_P 34
#define TCP_SRC_PORT_L_P 35
#define TCP_DATA_START_P 54

#define TCP_CHECKSUM_H_P 50
#define TCP_CHECKSUM_L_P 51

// Function to calculate checksum (for simplicity, assumes it's calculated externally)
uint16_t calculate_checksum(uint8_t *data, uint16_t length);

// Function prototype
uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size);
void print_hexdump(const uint8_t *data, uint16_t size);
void process_packet_from_buffer(uint16_t start_address);
void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size);
void process_packet_from_buffer(uint16_t start_address);
void calculateIPChecksum(uint8_t *buffer);
void calculateTcpChecksum(uint8_t *buffer);

#endif /* TCP_H_ */
