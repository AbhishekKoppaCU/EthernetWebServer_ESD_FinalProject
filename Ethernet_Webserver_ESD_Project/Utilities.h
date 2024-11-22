#ifndef UTILITIES_H
#define UTILITIES_H


#include "SPI.h"


int putchar (int c);

// getchar gets a char from RX. Blocking. Returns char.
int getchar (void);

// putstr takes a string (char array) and prints till it finds a NULL.
// Returns length of printed string with null char
int putstr (char *s);







#endif // UTILITIES_H
