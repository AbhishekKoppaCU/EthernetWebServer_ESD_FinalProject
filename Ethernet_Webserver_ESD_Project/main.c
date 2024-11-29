/*
 */

#include "SPI.h"
#include "Operations.h"

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
    int size, i = 0, output;
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

    printf("test\n\r");
    configure_SPI();
    while(1)
    {
        printf("Choose action: L-->LED ON\n\rR-->Read\n\r");
        char c = getchar();
        putchar(c);
        printf("\n\r");
        switch(c)
        {
        case 'L':
            LED_On();
            break;
        case 'R':
            printf("Enter the Control register address you want to read from\n\r");
            uint8_t addr = get_user_buffer_size();
            test_read_ctrl(addr);
            break;
        case 'W':
            printf("Enter the 16 bit data write\n\r");
            P1_1 = 0;
            delay_us(2);
            //uint16_t data = get_user_buffer_size();
            SPI_send(0x5F);
            SPI_send(0x02);
            delay_us(2);
            P1_1 = 1;
            break;
        }
    }
    //LED_Fast_Blink();
    //SPI_BB_init();
    //LED_On();
    //uint8_t received_byte;
    //P1_1 = 0;
    //SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);
    //SPI_send(ENC_REGISTER_BANK_2);
    //P1_1 = 1;
    //delay_us(100);
    /*while(1)
    {
        //LED_On();
        //LED_On();
        test_read_ctrl();
        //ENC_PHY_read(0x14);
    }
    LED_On();
    //test_read_ctrl();
    //ENC_PHY_read(0x14);
    while(1)
        ;
        */
/*
       P1_1 = 0;
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);     //Write to the ECON1 register
    //delay_us(10);
    SPI_send(ENC_REGISTER_BANK_2);                          //Select register bank2
    //delay_us(10);
    P1_1 = 1;
    delay_us(100);

    P1_1 = 0;
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | 0x09);  //Select the MIREGADR register
    //delay_us(10);
    SPI_send(0x04);                                   //Write the address of the PHY register in the MIREGADR register
    //delay_us(10);
    P1_1 = 1;
    delay_us(100);
    */


        while(1)
        ;
}
