#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#include "SPI.h"
#include "tcp.h"
// Packet buffer and size



// Definitions and constants
#define IP_PROTO_TCP 0x06
#define ETH_TYPE_ARP 0x0806
#define ETH_TYPE_IP  0x0800
#define TCP_FLAG_SYN 0x02
#define TCP_FLAG_ACK 0x10
#define TCP_FLAG_FIN 0x01
#define TCP_FLAG_PUSH 0x08

// Buffer offsets
#define ETH_DST_MAC 0
#define ETH_SRC_MAC 6
#define ETH_TYPE_H_P 12
#define ETH_TYPE_L_P 13
#define IP_PROTO_P 23
#define IP_SRC_P 26
#define IP_DST_P 30
#define TCP_FLAGS_P 47
#define TCP_SEQ_NUM_P 38
#define TCP_DST_PORT_H_P 36
#define TCP_DST_PORT_L_P 37
#define TCP_SRC_PORT_H_P 34
#define TCP_SRC_PORT_L_P 35
#define TCP_DATA_START_P 54

// Device configurations
// Ethernet header offsets
#define ETH_DST_MAC 0
#define ETH_SRC_MAC 6
#define ETH_TYPE_H_P 12
#define ETH_TYPE_L_P 13

// IP header offsets
#define IP_P 14 // Start of IP header
#define IP_HEADER_LEN 20 // IP header length (without options)
#define IP_CHECKSUM_P 24
#define IP_TOTLEN_H_P 16
#define IP_TOTLEN_L_P 17
#define IP_SRC_P 26
#define IP_DST_P 30

// TCP header offsets
#define TCP_SRC_PORT_H_P 34
#define TCP_SRC_PORT_L_P 35
#define TCP_DST_PORT_H_P 36
#define TCP_DST_PORT_L_P 37
#define TCP_SEQ_H_P 38
#define TCP_SEQ_L_P 39
#define TCP_ACK_H_P 42
#define TCP_ACK_L_P 43
#define TCP_HEADER_LEN_P 46
#define TCP_FLAGS_P 47
#define TCP_CHECKSUM_H_P 50
#define TCP_CHECKSUM_L_P 51
#define TCP_OPTIONS_P 54
#define TCP_WIN_SIZE_H_P 48 // High byte of the TCP Window Size
#define TCP_WIN_SIZE_L_P 49 // Low byte of the TCP Window Size
#define TCP_HEADER_LEN 20
#define ETH_HEADER_LEN 14

// IP protocol constants
//#define IP_PROTO_TCP 6
//#define IP_PROTO_UDP 17









void packetLoop(void);
uint16_t packetReceive(void);
