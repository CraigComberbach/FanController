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
#include "A2D.h"

/************Arbitrary Functionality*************/
/*************   Magic  Numbers   ***************/
#define LOW		0
#define HIGH	1
#define INPUT	1
#define OUTPUT	0

/***********State Machine Definitions*************/
/*************  Global Variables  ***************/
/*************Function  Prototypes***************/
void Initialize_TMR1(void);
void Initialize_TMR2(void);
void Initialize_TMR3(void);
void Initialize_TMR4(void);

/************* Device Definitions ***************/
/************* Module Definitions ***************/
/************* Other  Definitions ***************/

void Initialize_Microchip(void)
{
	//Setup default ouput values (before turning it into an output, or...)
	LATAbits.LATA0 = LOW;
	LATAbits.LATA1 = LOW;
	LATAbits.LATA2 = LOW;
	LATAbits.LATA3 = LOW;
	LATAbits.LATA4 = LOW;
	LATAbits.LATA6 = LOW;
	LATBbits.LATB4 = LOW;
	LATBbits.LATB8 = LOW;
	LATBbits.LATB9 = LOW;
	LATBbits.LATB14 = LOW;
	LATBbits.LATB15 = LOW;

	//Setup pin IO
	TRISAbits.TRISA0 = INPUT;
	TRISAbits.TRISA1 = INPUT;
	TRISAbits.TRISA2 = INPUT;
	TRISAbits.TRISA3 = INPUT;
	TRISAbits.TRISA4 = OUTPUT;
	TRISAbits.TRISA6 = OUTPUT;
	TRISBbits.TRISB4 = OUTPUT;
	TRISBbits.TRISB8 = INPUT;
	TRISBbits.TRISB9 = INPUT;
	TRISBbits.TRISB14 = INPUT;
	TRISBbits.TRISB15 = INPUT;

	//Setup Timers
	Initialize_TMR1();
	Initialize_TMR2();
	Initialize_TMR3();
	Initialize_TMR4();

	//Setup Modules
	Initialize_A2D();

	return;
}

void Initialize_TMR1(void)
{
	//TODO - Write TMR1 Initialize
	return;
}

void Initialize_TMR2(void)
{
	//TODO - Write TMR2 Initialize
	return;
}

void Initialize_TMR3(void)
{
	//TODO - Write TMR3 Initialize
	return;
}

void Initialize_TMR4(void)
{
	//TODO - Write TMR4 Initialize
	return;
}
