/**************************************************************************************************
Authours:				Craig Comberbach
Target Hardware:		PIC24F
Chip resources used:	A2D Module
Code assumptions:
Purpose:				Read the Thermistor inputs

Version History:
v0.0.0	2013-07-20  Craig Comberbach
	Compiler: XC16 v1.11	IDE: MPLABx 1.70	Tool: ICD3	Computer: Intel Core2 Quad CPU 2.40 GHz, 5 GB RAM, Windows 7 64 bit Home Premium SP1
	First version
**************************************************************************************************/
/*************    Header Files    ***************/
#include <p24F08KL200.h>
#include "Controller Setup.h"
#include "Pins.h"

/************* Semantic Versioning***************/
/************Arbitrary Functionality*************/
/*************   Magic  Numbers   ***************/
/*************    Enumeration     ***************/
enum PORT_NAMES
{
	PortA,
	PortB,
	PortC,
	PortD,
	PortE
};

/***********State Machine Definitions************/
/*************  Global Variables  ***************/
/*************Function  Prototypes***************/
/************* Device Definitions ***************/
/************* Module Definitions ***************/
/************* Other  Definitions ***************/

int Setup_Pin(enum PIN_NAMES pinName, int io, int defaultLatch)
{
	int port, pin;

	//Range checking
	if((defaultLatch != 0) && (defaultLatch != 1))
		return 0;
	if((io != 0) && (io != 1))
		return 0;

	//Determine pin and port
	port = pinName / 16;
	pin = pinName % 16;

	//Now that we are through the gauntlet, it's time for assignment
	switch(port)
	{
		case PortA:
			if(defaultLatch)
				LATA |= 1 << pin;
			else
				LATA &= ~(1 << pin);

			if(io)
				PORTA |= 1 << pin;
			else
				PORTA &= ~(1 << pin);
			break;
		case PortB:
			if(defaultLatch)
				LATB |= 1 << pin;
			else
				LATB &= ~(1 << pin);

			if(io)
				PORTB |= 1 << pin;
			else
				PORTB &= ~(1 << pin);
			break;
		default:
			break;
	}

	//Success
	return 1;
}