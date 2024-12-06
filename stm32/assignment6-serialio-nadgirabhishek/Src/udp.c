/*
 * udp.c
 *
 *  Created on: Dec 2, 2024
 *      Author: nadgi
 */
#include "udp.h"
//typedef struct {
//    uint16_t src_port;
//    uint16_t dest_port;
//    uint16_t length;
//    uint16_t checksum;
//} UdpHeader;
void ip_send(uint8_t *data, uint16_t length, uint8_t protocol, uint8_t *dest_ip) {
    // TODO: Add IP header construction and encapsulation.
    // Stub for demonstration:
    printf("IP packet sent to %d.%d.%d.%d, Protocol: 0x%02X\n",
           dest_ip[0], dest_ip[1], dest_ip[2], dest_ip[3], protocol);
}

void udp_send(uint8_t *payload, uint16_t payload_len, uint16_t dest_port, uint8_t *dest_ip) {
    uint8_t buffer[1518];
    UdpHeader *udp_hdr = (UdpHeader *)buffer;

    // Populate UDP header
    udp_hdr->src_port = htons(12345); // Example source port
    udp_hdr->dest_port = htons(dest_port);
    udp_hdr->length = htons(sizeof(UdpHeader) + payload_len);
    udp_hdr->checksum = 0; // Not calculated

    // Copy payload
    memcpy(buffer + sizeof(UdpHeader), payload, payload_len);

    // Send packet
    ip_send(buffer, sizeof(UdpHeader) + payload_len, 0x11, dest_ip); // 0x11 = UDP protocol
}

