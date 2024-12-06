/*
 * arp.c
 *
 *  Created on: Dec 2, 2024
 *      Author: nadgi
 */

#include "arp.h"
/*
void arp_request(uint8_t *target_ip)
{
    //uint8_t broadcast_mac[6] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
    ArpPacket arp;

    // Set padding
    arp.padding = 0b00001110;

    // Populate ARP fields
    arp.hw_type = 0x0100; // Ethernet (in network byte order)
    arp.proto_type = 0x0008; // IPv4 (in network byte order)
    arp.hw_size = 6;
    arp.proto_size = 4;
    arp.opcode = 0x0100; // ARP request (in network byte order)

    // Populate MAC and IP addresses
    memcpy(arp.sender_mac, device_mac, 6); // Sender MAC address
    memcpy(arp.sender_ip, device_ip, 4);   // Sender IP address
    memcpy(arp.target_mac, target_mac, 6);       // Target MAC address (unknown)
    memcpy(arp.target_ip, target_ip, 4);   // Target IP address

    // Send the ARP frame
    eth_send_frame((uint8_t *)&arp, sizeof(ArpPacket), ETH_TYPE_ARP, target_mac);

    // Print log
    printf("ARP Request Sent to %d.%d.%d.%d\n",
           target_ip[0], target_ip[1], target_ip[2], target_ip[3]);
}
*/
void delay_ms(uint16_t ms)
{
    for (volatile uint32_t i = 0; i < ms * 1000; i++)
    {
        // Simple loop for delay; adjust the multiplier based on clock speed
    }
}
void enc28j60_start_transmission(void)
{
    uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
    econ1 |= 0x08; // Set TXRTS (bit 3)
    spi_control_write(0, 0x1F, econ1); // Write back to ECON1
}
void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
{
    // Write to ETXST (Transmit Start Pointer)
    spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
    spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte

    // Write to ETXND (Transmit End Pointer)
    spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
    spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
}

bool wait_for_transmission_complete(uint16_t timeout_ms)
{
    uint16_t elapsed = 0;

    while (elapsed < timeout_ms) {
        uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
        if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
            return true;  // Transmission completed
        }

        delay_ms(1);  // Wait 1 ms
        elapsed++;
    }

    return false;  // Timed out
}

bool enc28j60_transmission_successful()
{
    uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
    return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
}
void set_mac_address(uint8_t* mac_address)
{
    // Write the MAC address to the MAC Address registers (MAADR6 to MAADR1)
    // The MAC address is 6 bytes long
    //select_reg_bank(3);

    spi_control_write(3, 0x01, *mac_address++);  // MAADR6
    spi_control_write(3, 0x00, *mac_address++);  // MAADR5
    spi_control_write(3, 0x03, *mac_address++);  // MAADR4
    spi_control_write(3, 0x02, *mac_address++);  // MAADR3
    spi_control_write(3, 0x05, *mac_address++);  // MAADR2
    spi_control_write(3, 0x04, *mac_address);  // MAADR1
    //select_reg_bank(0);
}

void arp_request(void)
{
    uint8_t arp_packet[43]; // Minimum ARP packet size for Ethernet

    // Set the first byte to 0x0E
    arp_packet[0] = 0x0E;

    // Ethernet header
    // Set the MAC address
    //set_mac_address(device_mac);

    for (int i = 0; i < 6; i++)
    {
        arp_packet[i + 1] = target_mac[i];  // Destination MAC address
        arp_packet[i + 7] = device_mac[i];  // Source MAC address
    }

    // Ethernet Type: ARP (0x0806)
    arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
    arp_packet[14] = ETH_TYPE_ARP & 0xFF;

    // ARP request fields
    // Hardware type: Ethernet (0x0001)
    arp_packet[15] = 0x00;
    arp_packet[16] = 0x01;

    // Protocol type: IPv4 (0x0800)
    arp_packet[17] = 0x08;
    arp_packet[18] = 0x00;

    // Hardware size (MAC address = 6 bytes)
    arp_packet[19] = 0x06;

    // Protocol size (IPv4 = 4 bytes)
    arp_packet[20] = 0x04;

    // Operation: ARP request (0x0001)
    arp_packet[21] = 0x00;
    arp_packet[22] = 0x01;

    // Sender MAC address
    for (int i = 0; i < 6; i++) {
        arp_packet[23 + i] = device_mac[i];
    }

    // Sender IP address
    for (int i = 0; i < 4; i++) {
        arp_packet[29 + i] = device_ip[i];
    }

    // Target MAC address (0x00 for ARP request)
    for (int i = 0; i < 6; i++) {
        arp_packet[33 + i] = 0x00;
    }

    // Target IP address
    for (int i = 0; i < 4; i++) {
        arp_packet[39 + i] = target_ip[i];
    }

    // Write the ARP packet to the ENC28J60 buffer
    uint16_t frame_size = 43;  // The total length is now exactly 42 bytes (without padding)
    uint16_t start_address = TX_BUFFER_START;
    if ((start_address + frame_size - 1) > 0x1FFF) {
        printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
        return;
    }

    uint16_t end_address = start_address + frame_size - 1;
    spi_buffer_write(frame_size, start_address, arp_packet);

    // Set transmit pointers
    enc28j60_set_transmit_pointers(start_address, end_address);

    // Start transmission
    enc28j60_start_transmission();

    // Wait for transmission to complete
    if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
        // Check if transmission was successful
        if (enc28j60_transmission_successful()) {
            printf("ARP request sent successfully.\n\r");
        } else {
            printf("ARP transmission failed. Check error flags.\n\r");
        }
    } else {
        printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
    }
}

