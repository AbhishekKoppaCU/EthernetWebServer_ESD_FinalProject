/*
 * icmp.c
 *
 *  Created on: Dec 2, 2024
 *      Author: nadgi
 */
#include "icmp.h"

//typedef struct {
//    uint8_t type;
//    uint8_t code;
//    uint16_t checksum;
//    uint16_t id;
//    uint16_t sequence;
//} IcmpHeader;
uint16_t checksum(const void *data, uint16_t length) {
    const uint16_t *buf = data;
    uint32_t sum = 0;

    for (int i = 0; i < length / 2; i++) {
        sum += buf[i];
    }

    if (length % 2) {
        sum += ((const uint8_t *)data)[length - 1];
    }

    while (sum >> 16) {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }

    return ~sum;
}

void icmp_echo_reply(uint8_t *rx_payload, uint16_t rx_len, uint8_t *src_ip) {
    uint8_t tx_buffer[1518];
    IcmpHeader *icmp_hdr = (IcmpHeader *)tx_buffer;

    // Populate ICMP header
    icmp_hdr->type = 0x00; // Echo reply
    icmp_hdr->code = 0x00;
    icmp_hdr->checksum = 0; // Placeholder
    icmp_hdr->id = ((IcmpHeader *)rx_payload)->id;
    icmp_hdr->sequence = ((IcmpHeader *)rx_payload)->sequence;

    // Copy ICMP payload
    uint16_t payload_len = rx_len - sizeof(IcmpHeader);
    memcpy(tx_buffer + sizeof(IcmpHeader), rx_payload + sizeof(IcmpHeader), payload_len);

    // Calculate checksum
    icmp_hdr->checksum = checksum(tx_buffer, sizeof(IcmpHeader) + payload_len);

    // Send ICMP reply
    eth_send_frame(tx_buffer, sizeof(IcmpHeader) + payload_len, ETH_TYPE_IPV4, src_ip);
}
