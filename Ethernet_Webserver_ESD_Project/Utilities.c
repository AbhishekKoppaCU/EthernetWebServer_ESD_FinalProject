

#include "Utilities.h"


int putchar (int c)
{

    while (!TI);

    SBUF = c;           // load serial port with transmit value
    TI = 0;             // clear TI flag

    return c;
}


int getchar (void)
{

    while (!RI);

    RI = 0;                         // clear RI flag
    return SBUF;                    // return character from SBUF
}

int putstr (char *s)
{
    int i = 0;
    while (*s){            // output characters until NULL found
        putchar(*s++);
        i++;
    }
    return i+1;
}
