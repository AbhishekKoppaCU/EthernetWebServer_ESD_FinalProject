/*
 * global.h
 *
 *  Created on: Nov 4, 2024
 *      Author: Abhishek Nadgir
 */

#ifndef GLOBAL_H_
#define GLOBAL_H_

#include <stm32f0xx.h>
#include <stm32f091xc.h>


#include <stdio.h>
#include <string.h>
#include "functions.h"
#include "utilities.h"
#include "cbfifo.h"


extern cbfifo_t fifotx, fiforx;

#endif /* GLOBAL_H_ */
