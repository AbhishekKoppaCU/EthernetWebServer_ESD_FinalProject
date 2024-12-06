/*
 * Eth.c
 *
 *  Created on: Dec 1, 2024
 *      Author: Abhishek
 */


#include "Eth.h"
#include "stdbool.h"


//typedef struct {
//    uint8_t dest_mac[6];
//    uint8_t src_mac[6];
//    uint16_t eth_type;
//} EthernetHeader;

uint16_t read_packet(uint8_t *buffer) {
	// Read the next packet pointer (ERXRDPT)
	uint8_t low_byte = enc_mac_read(0x00, 0); // ERXRDPTL
	uint8_t high_byte = enc_mac_read(0x01, 0); // ERXRDPTH
	uint16_t next_packet_ptr = (high_byte << 8) | low_byte;

	// Set ERDPT to the start of the packet
	enc_control_write(0, 0x03, high_byte); // ERDPTH
	enc_control_write(0, 0x02, low_byte);  // ERDPTL

	// Read the length of the packet
	uint16_t length = SPI_ReadByte() | (SPI_ReadByte() << 8);

	// Skip the next packet pointer (2 bytes)
	SPI_ReadByte();
	SPI_ReadByte();

	// Read the packet into the buffer
	for (uint16_t i = 0; i < length; i++) {
		buffer[i] = SPI_ReadByte();
	}

	// Advance the RX read pointer
	enc_control_write(0, 0x0C, (next_packet_ptr - 1) & 0xFF); // ERXRDPTL
	enc_control_write(0, 0x0D, ((next_packet_ptr - 1) >> 8) & 0xFF); // ERXRDPTH

	// Signal ENC28J60 to free the packet
	enc_bit_set(0x1E, 0x40); // ECON2: Set PKTDEC bit

	return length;
}
/*
void eth_send_frame(uint8_t *payload, uint16_t payload_len, uint16_t eth_type, uint8_t *dest_mac) {
    uint8_t frame[1518]; // Maximum Ethernet frame size
    EthernetHeader *eth_hdr = (EthernetHeader *)frame;

    // Populate Ethernet Header
    memcpy(eth_hdr->dest_mac, dest_mac, 6);
    memcpy(eth_hdr->src_mac, device_mac, 6);
    eth_hdr->eth_type = htons(eth_type);

    // Copy Payload after Ethernet Header
    memcpy(frame + sizeof(EthernetHeader), payload, payload_len);

    // Set TX Start and End Pointers
    uint16_t start_address = TX_BUFFER_START;
    uint16_t end_address = start_address + sizeof(EthernetHeader) + payload_len - 1;
//    spi_control_write(0, 0x02, (start_address & 0xFF)); // EWRPTL
//    spi_control_write(0, 0x03, (start_address >> 8));   // EWRPTH
//    spi_control_write(0, 0x04, (start_address & 0xFF)); // ETXSTL
//    spi_control_write(0, 0x05, (start_address >> 8));   // ETXSTH
//    spi_control_write(0, 0x06, (end_address & 0xFF));   // ETXNDL
//    spi_control_write(0, 0x07, (end_address >> 8));     // ETXNDH
    printf("SPI Buffer Write Debug:\n");
    printf("Start Address: 0x%04X\n", start_address);
    printf("End Address: 0x%04X\n", end_address);
    printf("Data to Write (Length: %d):\n", sizeof(EthernetHeader) + payload_len);
    for (int i = 0; i < sizeof(EthernetHeader) + payload_len; i++) {
        if (i % 16 == 0) printf("\n0x%04X: ", start_address + i); // Print address
        printf("%02X ", frame[i]); // Print byte
    }
    printf("\n");
    // Write Frame to TX Buffer
    spi_buffer_write(sizeof(EthernetHeader) + payload_len, start_address, frame);

    // Transmit Frame
    bit_set(0x1E, 0x08); // ECON1.TXRTS
}*/
void eth_send_frame(uint8_t *payload, uint16_t payload_len, uint16_t eth_type, uint8_t *dest_mac)
{
    uint8_t frame[1518]; // Maximum Ethernet frame size
    EthernetHeader *eth_hdr = (EthernetHeader *)frame;

    // Populate Ethernet Header
    memcpy(eth_hdr->dest_mac, dest_mac, 6);          // Destination MAC address
    memcpy(eth_hdr->src_mac, device_mac, 6);        // Source MAC address
    eth_hdr->eth_type = (eth_type >> 8) | (eth_type << 8); // Ethernet type in network byte order

    // Handle ARP-specific requirement
    uint16_t total_payload_len = payload_len;
    if (eth_type == ETH_TYPE_ARP)
    {
        frame[sizeof(EthernetHeader)] = 0x0E; // Add the padding byte for ARP at the start
        memcpy(frame + sizeof(EthernetHeader) + 1, payload, payload_len);
        total_payload_len += 1; // Increase payload length to account for padding
    }
    else
    {
        // Copy payload directly after Ethernet header for non-ARP packets
        memcpy(frame + sizeof(EthernetHeader), payload, payload_len);
    }

    // Calculate start and end addresses in the ENC28J60 buffer
    uint16_t start_address = TX_BUFFER_START;
    uint16_t end_address = start_address + sizeof(EthernetHeader) + total_payload_len - 1;

    // Write frame to ENC28J60 TX buffer
    enc_buffer_write(sizeof(EthernetHeader) + total_payload_len, start_address, frame);

    // Set transmit pointers
    enc28j60_set_transmit_pointers(start_address, end_address);

    // Start transmission
    enc28j60_start_transmission();

    // Wait for transmission completion
    if (wait_for_transmission_complete(500))
    {
        // Check if transmission was successful
        if (enc28j60_transmission_successful())
        {
            printf("Ethernet frame sent successfully.\n");
        }
        else
        {
            printf("Ethernet transmission failed. Check error flags.\n");
        }
    }
    else
    {
        printf("Ethernet transmission timed out.\n");
    }
}

void eth_receive_frame(uint8_t *buffer, uint16_t *payload_len, uint16_t *eth_type, uint8_t *src_mac) {
    uint8_t frame[1518]; // Max Ethernet frame size
    uint16_t len = read_packet(frame);

    EthernetHeader *eth_hdr = (EthernetHeader *)frame;

    // Extract details
    memcpy(src_mac, eth_hdr->src_mac, 6);
    *eth_type = ntohs(eth_hdr->eth_type);
    *payload_len = len - sizeof(EthernetHeader);

    // Copy payload to buffer
    memcpy(buffer, frame + sizeof(EthernetHeader), *payload_len);
}
