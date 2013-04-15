/*
 * File:   Initialize.c
 * Author: Craig
 *
 * Created on August 4, 2011, 10:03 PM
 */
#include "pic.h"

void initialize();

void initialize()
{
	//Programming
	/*    MCLREN;//Enables the MCLR pin to reset the PIC
		MCLRE = 1;//MCLR set as MCLR
	//I need access to CONFIG as a register for so many reasons! See pg 54 for where to look (hint check out the grey box at top right)
	 */
	//GPIO
	TRIS0 = 1; //ICSP DAT
	TRIS1 = 1; //ICSP CLK
	TRIS2 = 1; //Temperature reading 1 (A2D) - AN2
	TRIS3 = 1; //MCLR
	TRIS4 = 1; //Temperature reading 2 (A2D) - AN3
	TRIS5 = 0; //Controlls a relay or LED

	//WDT Setup
	//    WDTE = 1;//Enable the WDT
	PSA = 1; //Prescaler is used for WDT
	PS0 = 1;
	PS1 = 1;
	PS2 = 1; //Prescaler set for 1:128, with no prescaler it times out in 18 ms, so we time out at 2.304 Seconds now

	//Interupts
	GIE = 0; //Disables all interupts
	PEIE = 0; //Disables all peripheral interupts
	T0IE = 0; //Disables the TMR0 interupt
	T0IF = 0; //TMR0 register did not overflow

	//A2D
	ADFM = 1; //Right justified
	VCFG = 0; //VDD reference voltage
	CHS1 = 1; //Always set, selects A2D channel (limits to AN2 or AN3)
	CHS0 = 0; //0 = AN2, 1 = AN3
	GODONE = 0; //A/D conversion completed/not in progress
	ADON = 1; //A/D converter module is operating
	ANS0 = 0;
	ANS1 = 0; //Pins setup as digital outputs, or somethingelse, who knows...
	ANS2 = 1;
	ANS3 = 1; //Pins setup as analog inputs
	ADCS0 = 1;
	ADCS1 = 1;
	ADCS2 = 1; //Conversion clock is dedicated internal 500 kHz clock

	return;
}