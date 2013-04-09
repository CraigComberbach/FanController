/*
 * File:   Dynamic Control.c
 * Author: Craig
 *
 * Created on August 4, 2011, 10:03 PM
 */
#include "pic.h"
#include "A2D.h"
#include "Jtables.h"

#define	FAN	GPIO5
#define ON	1
#define OFF	0
#define OFFSET	2   //Set the offset in degrees celcius that the space has to be warmer to turn on the fan

void dynamic_control();

void dynamic_control()
{
    unsigned char   loop;//Counts 0 to 15, for iterating over
    unsigned int    temp1 = 0,//Stores the averaged/normailzed temperature values
		    temp2 = 0;//Stores the averaged/normailzed temperature values

    //Read and normalize temperature sensor 1
    for(loop = 0; loop < 16; ++loop)
	temp1 += partialTempTable[slow_A2D(CHANNEL_3) / 4];

    //Read and normalize temperature sensor 2
    for(loop = 0; loop < 16; ++loop)
	temp2 += partialTempTable[slow_A2D(CHANNEL_2) / 4];

    //Average the two temperatures
    temp1 /= 16;
    temp2 /= 16;

    //Determine fan state
    if(temp1 > (temp2 + OFFSET))
	FAN = ON;
    else
	FAN = OFF;

    return;
}