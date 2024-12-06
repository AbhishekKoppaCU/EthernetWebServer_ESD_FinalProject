#include "SPI.h"

#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>



#define ARP_REQUEST 0x0001
#define ETH_TYPE_ARP 0x0806
#define ETH_TYPE_IP 0x0800



void send_arp_request(void);
void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address);
void RX_disable(void);
void RX_enable(void);
