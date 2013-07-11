/**************************************************************************************************
Authours:				Craig Comberbach
Target Hardware:		PIC
Chip resources used:
Code assumptions:
Purpose:

Version History:
v0.01	2013-07-11  Craig Comberbach
	Compiler: C30 v3.31		IDE: MPLABx 1.80	Tool: RealICE	Computer: Intel Xeon CPU 3.07 GHz, 6 GB RAM, Windows 7 64 bit Professional SP1
	First version
**************************************************************************************************/
/*************    Header Files    ***************/
#include <p24F08KL200.h>
#include "Controller Setup.h"
#include "Initialize.h"

/************Arbitrary Functionality*************/
/*************   Magic  Numbers   ***************/
/***********State Machine Definitions*************/
/*************  Global Variables  ***************/
/*************Function  Prototypes***************/
/************* Device Definitions ***************/
/************* Module Definitions ***************/
/************* Other  Definitions ***************/

void Intialize(void)
{
	//Setup default ouput values (before turning it into an output
	LATAbits.LATA0
	LATAbits.LATA1
	LATAbits.LATA2
	LATAbits.LATA3
	LATAbits.LATA4
	LATAbits.LATA6
	LATBbits.LATB4
	LATBbits.LATB8
	LATBbits.LATB9
	LATBbits.LATB14
	LATBbits.LATB15

	//Setup pin IO
	TRISAbits.TRISA0
	TRISAbits.TRISA1
	TRISAbits.TRISA2
	TRISAbits.TRISA3
	TRISAbits.TRISA4
	TRISAbits.TRISA6
	TRISBbits.TRISB4
	TRISBbits.TRISB8
	TRISBbits.TRISB9
	TRISBbits.TRISB14
	TRISBbits.TRISB15

	//Setup Modules
}