/*
 * global.h
 *
 *  Created on: Nov 4, 2024
 *      Author: Abhishek Nadgir
 */

#ifndef GLOBAL_H_
#define GLOBAL_H_

#include <stm32f0xx.h>
#include <stm32f091xc.h>
#include "global.h"
#include <stdio.h>
#include <string.h>
#include "functions.h"
#include "utilities.h"
#include "cbfifo.h"
#include "udp.h"
#include "arp.h"
#include "Eth.h"
#include "icmp.h"
#include "spi.h"
#include <stdbool.h>

#define htons(x) __builtin_bswap16(x)
#define ntohs(x) __builtin_bswap16(x)


extern uint8_t target_mac[6];

extern uint8_t device_mac[6]; // Default MAC
extern uint8_t device_ip[4]; // Default IP Address
extern uint8_t target_ip[4];

extern cbfifo_t fifotx, fiforx;

#endif /* GLOBAL_H_ */
