
/*
 * tcp.c
 *
 *  Created on: Dec 6, 2024
 *      Author: nadgi
 */
#include "tcp.h"


void calculateIPChecksum(uint8_t *buffer) {
    // Reset the checksum field
    buffer[IP_CHECKSUM_P] = 0;
    buffer[IP_CHECKSUM_P + 1] = 0;

    // Calculate checksum for a fixed IP header length (20 bytes)
    uint16_t length = IP_HEADER_LEN;
    uint32_t sum = 0;

    // Sum the 16-bit words in the header
    for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
        uint16_t word = (buffer[i] << 8) | buffer[i + 1];
        sum += word;
    }

    // Add carry bits until the sum fits in 16 bits
    while (sum >> 16) {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }

    // Compute one's complement and store it in the checksum field
    uint16_t checksum = ~((uint16_t)sum);
    buffer[IP_CHECKSUM_P] = (checksum >> 8) & 0xFF;
    buffer[IP_CHECKSUM_P + 1] = checksum & 0xFF;
}

void calculateTcpChecksum(uint8_t *buffer) {
    // Reset the checksum field
    buffer[TCP_CHECKSUM_H_P] = 0;
    buffer[TCP_CHECKSUM_L_P] = 0;

    // Extract TCP length (Total Length - IP Header Length)
    uint16_t tcpLength = (((buffer[IP_TOTLEN_H_P] << 8) | buffer[IP_TOTLEN_L_P]) - IP_HEADER_LEN);
    uint32_t sum = 0;

    // Pseudo-header: Source IP
    for (uint8_t i = 0; i < 4; i++) {
        sum += (buffer[IP_SRC_P + i] << 8) | buffer[IP_SRC_P + i + 1];
        i++;
    }

    // Pseudo-header: Destination IP
    for (uint8_t i = 0; i < 4; i++) {
        sum += (buffer[IP_DST_P + i] << 8) | buffer[IP_DST_P + i + 1];
        i++;
    }

    // Pseudo-header: Protocol and TCP length
    sum += (uint16_t)IP_PROTO_TCP;
    sum += tcpLength;

    // TCP Header and Payload
    for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
        uint16_t word = (buffer[i] << 8) | buffer[i + 1];
        sum += word;
    }

    // Add carry bits
    while (sum >> 16) {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }

    // Compute one's complement and store in the checksum field
    uint16_t checksum = ~((uint16_t)sum);
    buffer[TCP_CHECKSUM_H_P] = (checksum >> 8) & 0xFF;
    buffer[TCP_CHECKSUM_L_P] = checksum & 0xFF;
}

// Function to calculate the checksum
uint16_t calculate_checksum(uint8_t *data, uint16_t length) {
    uint32_t sum = 0;

    // Accumulate checksum
    for (uint16_t i = 0; i < length; i += 2) {
        uint16_t word = (data[i] << 8) + (i + 1 < length ? data[i + 1] : 0);
        sum += word;

        // Handle carry (wrap around)
        if (sum > 0xFFFF) {
            sum = (sum & 0xFFFF) + (sum >> 16);
        }
    }

    // Final wrap around
    sum = (sum & 0xFFFF) + (sum >> 16);

    // Return one's complement
    return ~sum;
}
uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size) {
    static uint8_t response[MAX_PACKET_SIZE + 1];  // Add extra byte for 0x0E at the start
    memset(response, 0, MAX_PACKET_SIZE + 1);      // Clear the response buffer

    response[0] = 0x0E;  // Ensure the first byte of the response is always 0x0E

    // Shift the response pointer to include the 0x0E without overwriting actual data
    uint8_t *data_start = response + 1;

    // Parse the Ethernet header
    uint8_t *ethernet_header = packet;
    uint8_t *response_ethernet_header = data_start;
    memcpy(response_ethernet_header, ethernet_header, ETHERNET_HEADER_SIZE);

    // Swap MAC addresses for the response
    memcpy(response_ethernet_header, ethernet_header + 6, 6);  // Destination MAC
    memcpy(response_ethernet_header + 6, ethernet_header, 6);  // Source MAC

    // Parse the IP header
    uint8_t *ip_header = packet + ETHERNET_HEADER_SIZE;
    uint8_t *response_ip_header = data_start + ETHERNET_HEADER_SIZE;

    // Copy and adjust IP header
    memcpy(response_ip_header, ip_header, IP_HEADER_SIZE);
    response_ip_header[12] = ip_header[16];  // Swap Source IP
    response_ip_header[13] = ip_header[17];
    response_ip_header[14] = ip_header[18];
    response_ip_header[15] = ip_header[19];
    response_ip_header[16] = ip_header[12];  // Swap Destination IP
    response_ip_header[17] = ip_header[13];
    response_ip_header[18] = ip_header[14];
    response_ip_header[19] = ip_header[15];
    response_ip_header[10] = 0;              // Clear checksum
    response_ip_header[11] = 0;

    // Parse the TCP header
    uint8_t *tcp_header = packet + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
    uint8_t *response_tcp_header = data_start + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;

    // Copy and adjust TCP header
    memcpy(response_tcp_header, tcp_header, TCP_HEADER_SIZE);
    response_tcp_header[0] = tcp_header[2];  // Swap Source Port
    response_tcp_header[1] = tcp_header[3];
    response_tcp_header[2] = tcp_header[0];  // Swap Destination Port
    response_tcp_header[3] = tcp_header[1];

    response_tcp_header[4] = 0;
    response_tcp_header[5] = 0;
    response_tcp_header[6] = 0;
    response_tcp_header[7] = 0;

    uint8_t SYN_SEQ3 = tcp_header[4];
    uint8_t SYN_SEQ2 = tcp_header[5];
    uint8_t SYN_SEQ1 = tcp_header[6];
    uint8_t SYN_SEQ0 = tcp_header[7];

    response_tcp_header[8] = SYN_SEQ3;
    response_tcp_header[9] = SYN_SEQ2;
    response_tcp_header[10] = SYN_SEQ1;
    response_tcp_header[11] = SYN_SEQ0 + 1;





    response_tcp_header[12] = 0x50;  // SYN (0x02) + ACK (0x10)
    // Set flags: SYN-ACK
    response_tcp_header[13] = 0x12;  // SYN (0x02) + ACK (0x10)

    //response_tcp_header[14] = 0xFF;
    // Set flags: SYN-ACK
    //response_tcp_header[15] = 0xFF;



    // Clear urgent pointer
    response_tcp_header[18] = 0;
    response_tcp_header[19] = 0;

    // Recalculate checksums
    uint16_t tcp_length = TCP_HEADER_SIZE;
    uint16_t ip_total_length = IP_HEADER_SIZE + tcp_length;

    response_ip_header[2] = (ip_total_length >> 8) & 0xFF;
    response_ip_header[3] = ip_total_length & 0xFF;

    // Calculate IP checksum
    calculateIPChecksum(data_start);

    // Set TCP pseudo-header and checksum
    calculateTcpChecksum(data_start);

    //uint16_t ip_checksum = calculate_checksum(response_ip_header, IP_HEADER_SIZE);
    //response_ip_header[10] = (ip_checksum >> 8) & 0xFF;
    //response_ip_header[11] = ip_checksum & 0xFF;

    //uint16_t tcp_checksum = calculate_checksum(data_start + ETHERNET_HEADER_SIZE, ip_total_length);
    //response_tcp_header[16] = (tcp_checksum >> 8) & 0xFF;
    //response_tcp_header[17] = tcp_checksum & 0xFF;

    // Add the len field (typically after the checksum, depending on your structure)
//uint8_t *tcp_options = response_tcp_header + 20; // After the TCP header (flags, sequence, etc.)

// Set the 'len' field (assuming it�s part of the TCP options area or payload)
//tcp_options[0] = 0;  // Set len to 0 (if applicable)

// Add MSS (Maximum Segment Size) as a TCP option
//tcp_options[0] = 0x02;  // Option Type for MSS (0x02)
//tcp_options[1] = 0x04;  // Length of the MSS option (4 bytes)
//tcp_options[2] = 0x05;  // MSS value (0x0500 = 1280 in decimal)
//tcp_options[3] = 0x00;

// Update the response size (including the shifted start with 0x0E)
*response_size = 1 + ETHERNET_HEADER_SIZE + ip_total_length; // Adding 4 for the MSS option size


    return response;
}



void print_hexdump(const uint8_t *data, uint16_t size) {
    printf("\nHexdump (Size: %d):\n", size);
    for (uint16_t i = 0; i < size; i++) {
        printf("%02X ", data[i]); // Print each byte in hexadecimal format
        if ((i + 1) % 16 == 0) {
            printf("\n"); // Newline after every 16 bytes for readability
        }
    }
    if (size % 16 != 0) {
        printf("\n"); // Final newline if not already printed
    }
}


void process_packet_from_buffer(uint16_t start_address) {
    // Ensure valid address
    if (start_address > 0x1FFF) {
        printf("\n\rInvalid start address: %04X\n\r", start_address);
        return;
    }

    uint8_t next_packet_start[2]; // To hold the bytes at start+0 and start+1
    uint16_t next_start_address;
    uint16_t packet_size;
    uint16_t response_size; // Variable to hold the response size

    // Step 1: Read start+0 and start+1 to get the next packet start address
    if (spi_buffer_read(2, start_address, next_packet_start) != 2) {
        printf("\n\rFailed to read packet start address bytes\n\r");
        return;
    }

    // Step 2: Calculate the next packet start address (16-bit)
    next_start_address = ((uint16_t)next_packet_start[1] << 8) | next_packet_start[0];

    // Step 3: Calculate the size of the packet
    if (next_start_address < start_address) {
        printf("\n\rInvalid next start address: 0x%04X\n\r", next_start_address);
        return;
    }
    packet_size = next_start_address - (start_address+6);

    // Step 4: Allocate buffer for the packet data
    uint8_t *packet_data = (uint8_t *)malloc(packet_size);
    if (packet_data == NULL) {
        printf("\n\rMemory allocation failed for packet size: %d\n\r", packet_size);
        return;
    }

    // Step 5: Read the packet data
    if (spi_buffer_read(packet_size, start_address+6, packet_data) != packet_size) {
        printf("\n\rFailed to read packet data\n\r");
        free(packet_data);
        return;
    }

    // Step 6: Pass the data to TCP packet processing
    uint8_t *response = process_tcp_packet(packet_data, packet_size, &response_size);

    // Print the response in hexdump format before freeing
    if (response != NULL) {
        printf("\nProcessed response data:\n");
        //print_hexdump(response, response_size);
        transmit_tcp_packet(response, response_size);
        free(response); // Free response memory if allocated dynamically
    } else {
        printf("\nNo response generated by TCP packet processing.\n");
    }

    // Step 7: Free the allocated memory
    free(packet_data);

    printf("\n\rSuccessfully processed packet of size %d from 0x%04X to 0x%04X\n\r",
           packet_size, start_address, next_start_address - 1);
}


void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
{
	//Write the ARP packet to the ENC28J60 buffer
	//uint16_t frame_size = 43; // The total length is now exactly 42 bytes (without padding)
	uint16_t start_address = TX_BUFFER_START;
	if ((start_address + packet_size - 1) > 0x1FFF) {
		printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
		return;
	}
	uint16_t end_address = start_address + packet_size - 1;
	spi_buffer_write(packet_size, start_address, packet);

	// Set transmit pointers
	enc28j60_set_transmit_pointers(start_address, end_address);

	// Start transmission
	enc28j60_start_transmission();

	// Wait for transmission to complete
	if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
		// Check if transmission was successful
		if (enc28j60_transmission_successful()) {
			printf("TCP request sent successfully.\n\r");
		} else {
			printf("TCP transmission failed. Check error flags.\n\r");
		}
	} else {
		printf(
				"Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
	}
}
