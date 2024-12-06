/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2023 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
// Reference USed: Lecture Presentation Slides utilised for Command table and Command processing
#include "main.h"

//#define UNUSED(x) (void)(x)
uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
uint8_t target_ip[4] = { 192, 168, 1, 1 };
void runWebServer(const uint8_t *macAddress, const uint8_t *ipAddress);
int main(void) {
	/*
	 * Clocks: Processor = 48 Mhz. AHB = 48 MHz. APB = 24 MHz.
	 *
	 */
	//init_uled(); //On board LED Initialisation
	SPI_Init();
	uart_init(); //UART 2 Initialisation for Serial COmmunication
	cbfifo_init(&fiforx); // Initialising RX Buffer
	cbfifo_init(&fifotx); // Initialising TX buffer
	char inputval[INPUT_BUFFER_SIZE]; // Defining a buffer to accept the command and Process
	char *argv[ARGUMENT_BUFFER_SIZE]; // Defining a buffer to store Argument Vectors after tokenization
	int argc; //TO store Argument COunt
	printf("\nWelcome to SerialIO!\n");
	enc_init(device_mac);
	//runWebServer(device_mac,device_ip);
	while (1) {

		printf("\n$$ ");
		accumulate_line(inputval, INPUT_BUFFER_SIZE); //Takes character from Serial Terminal
		argc = tokenize_line(inputval, argv, ARGUMENT_BUFFER_SIZE); // Takes array of string as input and returs Number of Arguments and buffer of argument vector
		process_command(argc, argv); // Takes argument count and vector as input and processes the command accordingly
	}
}
