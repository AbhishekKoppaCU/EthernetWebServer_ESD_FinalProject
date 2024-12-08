/*
 */

#include "SPI.h"
#include "Operations.h"
#include "Eth.h"
#include "tcp.h"


//Function to convert hex string to integer
void external_interrupt0_isr(void) __interrupt (0);

//#define UNUSED(x) (void)(x)

uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
uint8_t target_ip[4] = { 192, 168, 1, 1 };




int hex_to_int(char* str)
{

    int i = 0, result = 0;
    while(str[i] != '\0')
    {
        int ASCII = (int)str[i];
        result *= 16;
        if(ASCII >= '0' && ASCII <= '9')
        {
            result += str[i] - 48;
        }
        else if(ASCII >= 'A' && ASCII <= 'F')
        {
            result += str[i] - 55;
        }
        else if(ASCII >= 'a' && ASCII <= 'f')
        {
            result += str[i] - 87;
        }
        i++;
    }
    return result;

}

//Function to take the user buffer size
int get_user_buffer_size(void)
{
    int i = 0, output;
    char input[10], ch;


    while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
    {
        putchar(ch);
        input[i] = ch;      //Append the input array with the received character
        i++;
    }
    input[i] = '\0';
    output = hex_to_int(input); //Convert the char hex data to int
    printf_tiny("\n\r");

    return output;
}

void main(void)
{
    uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
    uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
    //ENC_RESET = 1;
    printf("SPI Operations on 8051\n\r");
    configure_SPI();
    //RX_disable();
    enc_init(device_mac);

    while(1)
    {
        printf("\n\rChoose an action: \n\r");
        printf("1 --> Control Write\n\r");
        printf("2 --> Buffer Write\n\r");
        printf("3 --> Buffer Read\n\r");
        printf("4 --> MAC Register Read\n\r");
        printf("5 --> PHY SPI Write\n\r");
        printf("6 --> PHY SPI Read\n\r");
        printf("7 --> ENC Reset\n\r");
        printf("8 --> Read ETH Register\n\r");
        printf("9 --> Display Menu\n\r");
        printf("A --> Send ARP Request\n\r");
        printf("B --> Init RX buffers\n\r");
        printf("C --> Hard Reset(nRESET pin)\n\r");
        printf("D --> Process TCP\n\r");
        printf("E --> Enable TX interrupt\n\r");
        printf("F --> Disabling TX interrupt\n\r");

        char c = getchar();
        putchar(c);
        printf("\n\r");

        switch(c)
        {
            case '1': {
                printf("Enter the register bank to select:\n\r");
                uint8_t reg_bank = get_user_buffer_size();
                printf("Enter the address of the Control Register:\n\r");
                uint8_t addr = get_user_buffer_size();
                printf("Enter the data you want to write:\n\r");
                uint8_t data = get_user_buffer_size();
                spi_control_write(reg_bank, addr, data);
                break;
            }
            case '2': {
                printf("Enter the number of bytes to write:\n\r");
                int num_bytes = get_user_buffer_size();
                printf("Enter the starting address:\n\r");
                uint16_t start_address = get_user_buffer_size();
                uint8_t buffer[256];
                printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
                for (int i = 0; i < num_bytes; i++) {
                    printf("Byte %d: ", i);
                    buffer[i] = get_user_buffer_size();
                }
                spi_buffer_write(num_bytes, start_address, buffer);
                break;
            }
            case '3': {
                printf("Enter the number of bytes to read:\n\r");
                int num_bytes = get_user_buffer_size();
                printf("Enter the starting address:\n\r");
                uint16_t start_address = get_user_buffer_size();
                uint8_t buffer[256];
                spi_buffer_read(num_bytes, start_address, buffer);
                break;
            }
            case '4': {
                printf("Enter the MAC register bank to select:\n\r");
                uint8_t reg_bank = get_user_buffer_size();
                printf("Enter the address of the MAC Register:\n\r");
                uint8_t addr = get_user_buffer_size();
                uint8_t data = mac_spi_read(addr, reg_bank);
                printf("MAC Register Data: 0x%02X\n\r", data);
                break;
            }
            case '5': {
                printf("Enter the PHY register address:\n\r");
                uint8_t addr = get_user_buffer_size();
                printf("Enter the 16-bit data to write:\n\r");
                uint16_t data = get_user_buffer_size();
                phy_spi_write(addr, data);
                printf("PHY Write Data: 0x%04X\n\r", data);
                break;
            }
            case '6': {
                printf("Enter the PHY register address to read:\n\r");
                uint8_t addr = get_user_buffer_size();
                uint16_t data = phy_spi_read(addr);
                printf("PHY Read Data: 0x%04X\n\r", data);
                break;
            }
            case '7': {
                printf("Resetting ENC28J60...\n\r");
                enc_reset();
                break;
            }
            case '8': {
                printf("Enter the ETH register address to read:\n\r");
                uint8_t addr = get_user_buffer_size();
                printf("Enter the bank (0 or 1):\n\r");
                uint8_t bank = get_user_buffer_size();
                uint8_t data = eth_spi_read(addr, bank);
                printf("ETH Register Data: 0x%02X\n\r", data);
                break;
            }
            case '9': {
                printf("\n\rChoose an action: \n\r");
                printf("1 --> Control Write\n\r");
                printf("2 --> Buffer Write\n\r");
                printf("3 --> Buffer Read\n\r");
                printf("4 --> MAC Register Read\n\r");
                printf("5 --> PHY SPI Write\n\r");
                printf("6 --> PHY SPI Read\n\r");
                printf("7 --> ENC Reset\n\r");
                printf("8 --> Read ETH Register\n\r");
                break;
            }
            case 'A':{
                send_arp_request();
                while(1)
                {
                    if(ENC_pkt_count() > 0)
                    {
                        uint16_t nextPacket;
                        uint16_t byteCount;
                        uint16_t status;
                        static uint16_t gNextPacketPtr = RX_BUFFER_START;
                        uint16_t len = 0;
                        if (gNextPacketPtr == 0)
                        {
                            update_ERXRDPT(RX_BUFFER_END);
                        }
                        else
                        {
                            update_ERXRDPT(gNextPacketPtr - 1);
                        }
                        uint8_t *packet_data = (uint8_t *)malloc(6);
                        spi_buffer_read(6, gNextPacketPtr, packet_data);

                        // Extract the first three bytes and assign them to nextPacket, byteCount, and status
                        // Extract the first three values with correct byte order
                        nextPacket = (uint16_t)(packet_data[1] << 8 | packet_data[0]); // Next Packet (MSB, LSB)
                        byteCount = (uint16_t)(packet_data[3] << 8 | packet_data[2]);  // Byte Count (MSB, LSB)
                        status = (uint16_t)(packet_data[5] << 8 | packet_data[4]);     // Status (MSB, LSB)


                        len = byteCount - 4;

                        uint8_t *packet_data_actual = (uint8_t *)malloc(len);
                        spi_buffer_read(len, gNextPacketPtr + 6, packet_data_actual);

                        int is_tcp_for_target = 0;

                        // Check Destination MAC
                        if (memcmp(packet_data_actual, device_mac, 6) == 0) {
                                printf("MAC matched\n................\r");
                            // Check EtherType (bytes 12-13 should be 0x0800 for IPv4)
                            if (packet_data_actual[12] == 0x08 && packet_data_actual[13] == 0x00) {
                                printf("Valid ETHER packet.....................\n\r");
                                // Check IP Protocol (byte 23 should be 6 for TCP)
                                if (packet_data_actual[23] == 0x06) {
                                    is_tcp_for_target = 1;
                                }
                            }
                        }
                        if (is_tcp_for_target)
                        {

                        // Step 6: Pass the data to TCP packet processing
                        uint16_t response_size; // Variable to hold the response size
                        uint8_t *response = process_tcp_packet(packet_data_actual, len+4+4, &response_size);

                        // Print the response in hexdump format before freeing
                        if (response != NULL) {
                            printf("\nProcessed response data:\n");
                            print_hexdump(response, response_size);
                            transmit_tcp_packet(response, response_size+4);
                            free(response); // Free response memory if allocated dynamically
                        } else {
                            printf("\nNo response generated by TCP packet processing.\n");
                        }

                            printf("YESSSS\n");
                        }
                        else
                        {
                            printf("NOOOO\n");
                        }


                        gNextPacketPtr = nextPacket;



                        // Optionally, print the extracted values
                        printf("nextPacket: 0x%04X\n", nextPacket);
                        printf("byteCount: %d\n", byteCount);
                        printf("status: 0x%02X\n", status);

                        // Free the allocated memory if no longer needed
                        uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
                        spi_control_write(2, 0x1E, (read_econ2 | (1 << 6))); //mac enable for reception
                        free(packet_data);



                    }
                }
                break;
            }
            case 'B':{
                break;
            }
            case 'C':{
                printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
                ENC_RESET = 0;
                for(int i = 0; i < 6000; i++);
                ENC_RESET = 1;
                break;
            }
            case 'D':
            {
                //printf("Enter the start address of the TCP\n\r");
                //uint16_t addr = get_user_buffer_size();
                process_packet_from_buffer(0x0846);
                break;
            }
            case 'E':{
                IT0 = 1;  // Edge-triggered mode for INT0
                EX0 = 1;  // Enable INT0
                EA = 1;   // Enable global interrupts
                uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
                //spi_control_write(2, 0x1E, (read_econ2 | (1 << 6))); //mac enable for reception
                printf("Enabling TXPKTIE\n\r");
                spi_control_write(0, 0x1B, 0xC0);
                break;
            }
            case 'F':{
                printf("Disabling TXPKTIE\n\r");
                spi_control_write(0, 0x1B, 0);
            }
            default: {
                printf("Invalid option. Please select a valid action.\n\r");
                break;
            }
        }
    }
}
