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
#include "Project Setup.h"
#include "Initialize.h"
#include "A2D.h"
#include "Pins.h"
#include "Timers.h"

/************* Semantic Versioning***************/
//This code reqires Pins.c to fulfil it's roll
#if PINS_MAJOR != 0
	#warning "Pins has Major has changed"
#elif PINS_MINOR != 1
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
/***********State Machine Definitions*************/
/*************  Global Variables  ***************/
/*************Function  Prototypes***************/
/************* Device Definitions ***************/
/************* Module Definitions ***************/
/************* Other  Definitions ***************/

void Initialize_Microchip(void)
{
	//Setup individual pins
	Initialize_Pin(ra0, LOW, PUSH_PULL, INPUT);
	Initialize_Pin(ra1, LOW, PUSH_PULL, INPUT);
	Initialize_Pin(ra2, LOW, PUSH_PULL, INPUT);
	Initialize_Pin(ra3, LOW, PUSH_PULL, INPUT);
	Initialize_Pin(ra4, LOW, PUSH_PULL, OUTPUT);
	Initialize_Pin(ra6, LOW, PUSH_PULL, OUTPUT);
	Initialize_Pin(rb4, LOW, PUSH_PULL, OUTPUT);
	Initialize_Pin(rb8, LOW, PUSH_PULL, INPUT);
	Initialize_Pin(rb9, LOW, PUSH_PULL, INPUT);
	Initialize_Pin(rb14, LOW, PUSH_PULL, INPUT);
	Initialize_Pin(rb15, LOW, PUSH_PULL, INPUT);

	//Setup Timers
	Initialize_TMR1();
	Initialize_TMR2();
	Initialize_TMR3();
	Initialize_TMR4();

	//Setup Modules
	Initialize_A2D();

	return;
}
