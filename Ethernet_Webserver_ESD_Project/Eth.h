#include "SPI.h"

#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>



#define ARP_REQUEST 0x0001
#define ETH_TYPE_ARP 0x0806
#define ETH_TYPE_IP 0x0800

#define RX_BUFFER_START 0x0800
#define RX_BUFFER_END   0x1FFF
#define TX_BUFFER_START 0x0000
#define TX_BUFFER_END   0x07FF



void send_arp_request(void);
void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address);
void RX_disable(void);
void RX_enable(void);
void enc_init(const uint8_t *mac);
void enc_buffer_init(uint16_t start_address, uint16_t end_address);
