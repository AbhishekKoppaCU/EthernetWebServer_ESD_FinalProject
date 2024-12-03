/*
 */

#include "SPI.h"
#include "Operations.h"
#include "Eth.h"

//Function to convert hex string to integer
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
    printf("SPI Operations on 8051\n\r");
    configure_SPI();
    init_ENC();

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
                printf("Read Data:\n\r");
                for (int i = 0; i < num_bytes; i++) {
                    printf("Byte %d: 0x%02X\n\r", i, buffer[i]);
                }
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
                init_MAC();
                send_arp_request();
                break;
            }
            case 'B':{
                init_ENC();
                break;
            }
            default: {
                printf("Invalid option. Please select a valid action.\n\r");
                break;
            }
        }
    }
}
