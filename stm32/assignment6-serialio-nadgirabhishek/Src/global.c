/*
 * global.c
 *
 *  Created on: Nov 4, 2024
 *      Author: Abhishek Nadgir
 */

#include "cbfifo.h"

#include "global.h"
#include <stdbool.h>

void USART2_IRQHandler(void)
{
	// Check if RXNE flag is set (data received)
	if (USART2->ISR & USART_ISR_RXNE)
	{
		char newval = USART2->RDR; // Read the received character
		cbfifo_enqueue(&fiforx,&newval,sizeof(newval));
	}
	if (USART2->ISR & USART_ISR_TXE)
	{
		char newval; // Read the received character
		if(cbfifo_dequeue(&fifotx,&newval,sizeof(newval))>0)
		{
			 if (newval == '\n')
			 {
	                USART2->TDR = '\r';
	                while (!(USART2->ISR & USART_ISR_TXE));
	                USART2->TDR = '\n';
			 }
			 else
			 {
				 USART2->TDR = newval; // Send the character
			 }
		}
		else
		{
			USART2->CR1 &= (~(USART_CR1_TXEIE));
		}
	}
}


