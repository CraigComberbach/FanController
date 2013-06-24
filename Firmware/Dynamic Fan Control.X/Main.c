/* 
 * File:   Main.c
 * Author: craigc
 *
 * Created on June 17, 2013, 12:29 PM
 */

#include <p24F08KL200.h>
/*
 * 
 */
int main()
{
	unsigned int loop;
	TRISBbits.TRISB8 = 0;
	while(1)
	{
		for(loop = 0; loop < 60000; loop++)
			LATBbits.LATB8 ^= 1;
	}
	return;
}
