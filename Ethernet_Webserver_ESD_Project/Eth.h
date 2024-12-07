#include "SPI.h"
#include "tcp.h"

#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>



#define ARP_REQUEST 0x0001
#define ETH_TYPE_ARP 0x0806
#define ETH_TYPE_IP 0x0800

#define RX_BUFFER_START 0x0000
#define RX_BUFFER_END   0x0BFF

#define TX_BUFFER_START 0x0C00
#define TX_BUFFER_END   0x11FF



void send_arp_request(void);
void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address);
void RX_disable(void);
void RX_enable(void);
void enc_init(const uint8_t *mac);
void enc_buffer_init(uint16_t start_address, uint16_t end_address);
void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address);
bool wait_for_transmission_complete(uint16_t timeout_ms);
uint8_t ENC_pkt_count(void);
void update_ERXRDPT(uint16_t new_address);
