/**************************************************************************************************
Authours:				Craig Comberbach
Target Hardware:		PIC
Chip resources used:
Code assumptions:
Purpose:

Version History:
v0.0.0	2013-07-11  Craig Comberbach
	Compiler: C30 v3.31		IDE: MPLABx 1.80	Tool: RealICE	Computer: Intel Xeon CPU 3.07 GHz, 6 GB RAM, Windows 7 64 bit Professional SP1
	First version
**************************************************************************************************/
/*************    Header Files    ***************/
#include <p24F08KL200.h>
#include "Controller Setup.h"
#include "Initialize.h"
#include "A2D.h"
#include "Pins.h"
#include "Timers.h"

/************* Semantic Versioning***************/
//This code reqires Pins.c to fulfil it's roll
#if PINS_MAJOR != 0
	#warning "Pins has Major has changed"
#elif PINS_MINOR != 0
	#warning "Pins.c has new features that this code may benefit from"
#elif PINS_PATCH != 0
	#warning "Pins.c has had a bug fix, you should check to see that we weren't relying on a bug for functionality"
#endif

//This code requires A2D.c to fulfil it's roll
#if A2D_MAJOR != 0
	#warning "A2D.c has Major has changed"
#elif A2D_MINOR != 0
	#warning "A2D.c has new features that this code may benefit from"
#elif _PATCH != 0
	#warning "A2D.c has had a bug fix, you should check to see that we weren't relying on a bug for functionality"
#endif

//This code requires Timers.c to fulfil it's roll
#if TIMERS_MAJOR != 0
	#warning "Timer.c has Major has changed"
#elif TIMERS_MINOR != 0
	#warning "Timer.c has new features that this code may benefit from"
#elif TIMERS_PATCH != 0
	#warning "Timer.c has had a bug fix, you should check to see that we weren't relying on a bug for functionality"
#endif

/************Arbitrary Functionality*************/
/*************   Magic  Numbers   ***************/
#define LOW		0
#define HIGH	1
#define INPUT	1
#define OUTPUT	0

/***********State Machine Definitions*************/
/*************  Global Variables  ***************/
/*************Function  Prototypes***************/
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
