/*
 * Eth.h
 *
 *  Created on: Dec 1, 2024
 *      Author: Abhishek
 */

#ifndef ETH_H_
#define ETH_H_




#include "spi.h"
#include "commands.h"

#include <stdint.h>
#include <stddef.h>

void send_simple_packet(int argc, char *argv[]);
void enc28j60_start_transmission(void);;
void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address);

#endif /* ETH_H_ */
