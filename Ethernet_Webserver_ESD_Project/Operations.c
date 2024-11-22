#include "Operations.h"


void LED_Fast_Blink(void)
{
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);     //Write to the ECON1 register
    SPI_send(ENC_REGISTER_BANK_2);                          //Select register bank2

    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIREGADR);  //Select the MIREGADR register
    SPI_send(ENC_PHLCON);                                   //Write the address of the PHY register in the MIREGADR register

    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIWRL);
    SPI_send(LED_FAST_BLINK_LSB);
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIWRH);
    SPI_send(LED_FAST_BLINK_MSB);

}

void LED_Slow_Blink(void)
{

}

void LED_On(void)
{
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);     //Write to the ECON1 register
    delay_us(10);
    SPI_send(ENC_REGISTER_BANK_2);                          //Select register bank2
    delay_us(10);

    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIREGADR);  //Select the MIREGADR register
    delay_us(10);
    SPI_send(ENC_PHLCON);                                   //Write the address of the PHY register in the MIREGADR register
    delay_us(10);

    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIWRL);
    delay_us(10);
    SPI_send(LED_ON_LSB);
    delay_us(10);
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIWRH);
    delay_us(10);
    SPI_send(LED_ON_MSB);

}

void LED_Off(void)
{

}
