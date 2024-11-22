/*
 */

#include "SPI.h"
#include "Operations.h"


void main(void)
{

    printf("test\n\r");
    configure_SPI();
    //LED_Fast_Blink();
    LED_On();
    while(1)
        ;
}
