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
#include "p24F08KL200.h"
 PIC24F08KL200
int main()
{
	initialize();

	while(1)
	{
		//Toggle relay
		GPIO5 ^= 1;

		//Takes temperature measurements and decides when to turn on or off the relay
		dynamic_control();

		//Go to sleep until WDT wake you every 2.304 seconds
		//SLEEP;
	}
	return 0;
}
