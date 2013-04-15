/*
 * File:   main.c
 * Author: Craig
 *
 * Created on August 4, 2011, 9:55 PM
 */
/*
Program Memory	1024 Words
SRAM		64 Bytes
EEPROM		128 Bytes
 */
#include "Initialize.h"
#include "Dynamic Control.h"
#include "pic.h"

//Magic Numbers
#define MAX_DELAY 26	//If used with WDT, it will delay for ~60 seconds (assuming 26)

int main()
{
	//Used to skip over a function to delay its activation
	unsigned int delay = 0;

	//Setup the chip to do what I want it to
	if(++delay > MAX_DELAY)
	{
		initialize();
		delay = 0;
	}

	while(1)
	{
		//Toggle relay
		GPIO5 ^= 1;

		//Takes temperature measurements and decides when to turn on or off the relay
		dynamic_control();

		//Go to sleep until WDT wake you every 2.304 seconds
		//        SLEEP;
	}
	return 0;
}
