/*
 * Eth.c
 *
 *  Created on: Dec 1, 2024
 *      Author: Abhishek
 */


#include "Eth.h"
#include "stdbool.h"

void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
{
    // Write to ETXST (Transmit Start Pointer)
    spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
    spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte

    // Write to ETXND (Transmit End Pointer)
    spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
    spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
}

void delay_ms(uint16_t ms)
{
    for (volatile uint32_t i = 0; i < ms * 1000; i++) {
        // Simple loop for delay; adjust the multiplier based on clock speed
    }
}

void enc28j60_start_transmission(void)
{
    uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
    econ1 |= 0x08; // Set TXRTS (bit 3)
    spi_control_write(0, 0x1F, econ1); // Write back to ECON1
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
    return !(estat & 0x01); // Check if TXABRT (bit 0) is not set
}


void send_simple_packet(int argc, char *argv[]) {
    uint8_t ethernet_frame[64];  // Minimum Ethernet frame size
    uint8_t *frame_ptr = ethernet_frame;

    // Ethernet header (14 bytes)
    uint8_t dest_mac[] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF}; // Broadcast
    uint8_t source_mac[] = {0x00, 0x1A, 0x2B, 0x3C, 0x4D, 0x5E}; // STM32 MAC
    uint16_t eth_type = 0x0800; // IPv4 (big endian)

    memcpy(frame_ptr, dest_mac, 6);  // Destination MAC
    frame_ptr += 6;
    memcpy(frame_ptr, source_mac, 6); // Source MAC
    frame_ptr += 6;
    frame_ptr[0] = (eth_type >> 8) & 0xFF; // Ethernet type high byte
    frame_ptr[1] = eth_type & 0xFF;        // Ethernet type low byte
    frame_ptr += 2;

    // Add payload
    char payload[] = "Hello from STM32!";
    memcpy(frame_ptr, payload, strlen(payload));
    frame_ptr += strlen(payload);

    // Pad to meet minimum Ethernet frame size
    while ((frame_ptr - ethernet_frame) < 64) {
        *frame_ptr++ = 0x00;
    }

    uint16_t frame_size = frame_ptr - ethernet_frame;

    // Ensure the frame size does not exceed buffer memory size (0x1FFF)
    uint16_t start_address = 0x000A;
    if ((start_address + frame_size - 1) > 0x1FFF) {
        printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
        return;
    }

    uint16_t end_address = start_address + frame_size - 1;

    // Write the frame to ENC28J60 buffer
    spi_buffer_write(frame_size, start_address, ethernet_frame);

    // Set transmit pointers
    enc28j60_set_transmit_pointers(start_address, end_address);

    // Start transmission
    enc28j60_start_transmission();

    if (wait_for_transmission_complete(500)) {  // Wait up to 50 ms
        if (enc28j60_transmission_successful()) {
            printf("Packet transmitted successfully.\n");
        } else {
            printf("Transmission failed. Check error flags.\n");
        }
    } else {
        printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n");
    }
}
