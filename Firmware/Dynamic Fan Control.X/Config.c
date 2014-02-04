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
#include "Config.h"
#include "../../../Libraries/A2D/A2D.h"
#include "../../../Libraries/Pins/Pins.h"
#include "../../../Libraries/Timers/Firmware/Timers.h"
#include "../../../Libraries/I2C/I2C.h"

/************* Semantic Versioning***************/
//This project reqires the Pins library to fulfil it's roll
#ifndef PINS_LIBRARY
	#error "You need to include the Pins library for this code to compile"
#endif

//This project requires the A2D library to fulfil it's roll
#ifndef A2D_LIBRARY
	#error "You need to include the A2D library for this code to compile"
#endif

//This project requires the Timers library to fulfil it's roll
#ifndef TIMERS_LIBRARY
	#error "You need to include the Timers library for this code to compile"
#endif

//This project requires the I2C library to fulfil it's roll
#ifndef I2C_LIBRARY
	#error "You need to include the Timers library for this code to compile"
#endif

/************Arbitrary Functionality*************/
/*************   Magic  Numbers   ***************/
/***********State Machine Definitions*************/
/*************  Global Variables  ***************/
/*************  Pin Definitions   ***************/
struct PIN_DEFINITION RA0 = {0x0001, &TRISA, &ODCA, &LATA, &PORTA};
struct PIN_DEFINITION RA1 = {0x0002, &TRISA, &ODCA, &LATA, &PORTA};
struct PIN_DEFINITION RA2 = {0x0004, &TRISA, &ODCA, &LATA, &PORTA};
struct PIN_DEFINITION RA3 = {0x0008, &TRISA, &ODCA, &LATA, &PORTA};
struct PIN_DEFINITION RA4 = {0x0010, &TRISA, &ODCA, &LATA, &PORTA};
struct PIN_DEFINITION RA6 = {0x0020, &TRISA, &ODCA, &LATA, &PORTA};
struct PIN_DEFINITION RB4 = {0x0010, &TRISB, &ODCB, &LATB, &PORTB};
struct PIN_DEFINITION RB8 = {0x0100, &TRISB, &ODCB, &LATB, &PORTB};
struct PIN_DEFINITION RB9 = {0x0200, &TRISB, &ODCB, &LATB, &PORTB};
struct PIN_DEFINITION RB14 = {0x4000, &TRISB, &ODCB, &LATB, &PORTB};
struct PIN_DEFINITION RB15 = {0x8000, &TRISB, &ODCB, &LATB, &PORTB};

/*************Function  Prototypes***************/
void timerTest(void);

/************* Device Definitions ***************/
/************* Module Definitions ***************/
/************* Other  Definitions ***************/

void Configure_For_Dynamic_Fan_Control(void)
{
	//Setup individual pins
	Pin_Initialize(RA0, LOW, PUSH_PULL, INPUT);
	Pin_Initialize(RA1, LOW, PUSH_PULL, INPUT);
	Pin_Initialize(RA2, LOW, PUSH_PULL, INPUT);
	Pin_Initialize(RA3, LOW, PUSH_PULL, INPUT);
	Pin_Initialize(RA4, LOW, PUSH_PULL, OUTPUT);
	Pin_Initialize(RA6, LOW, PUSH_PULL, OUTPUT);
	Pin_Initialize(RB4, LOW, PUSH_PULL, OUTPUT);
	Pin_Initialize(RB8, LOW, PUSH_PULL, OUTPUT);
	Pin_Initialize(RB9, LOW, PUSH_PULL, INPUT);
	Pin_Initialize(RB14, LOW, PUSH_PULL, INPUT);
	Pin_Initialize(RB15, LOW, PUSH_PULL, INPUT);

	//Setup Timers
//	Initialize_Timer();
	Initialize_Timer(MAIN_LOOP, 1, SECONDS, &timerTest);	//Setup to operate as a 1mS timer for main loop regulation
//	Initialize_Timer();

	//Setup Modules
	Initialize_A2D();

	return;
}

void timerTest(void)
{
	Nop();
	LATBbits.LATB8 ^= 1;
	return;
}
