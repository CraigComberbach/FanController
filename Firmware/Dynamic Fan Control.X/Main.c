/**************************************************************************************************
Authours:				Craig Comberbach
Target Hardware:		PIC24F08KL200
Chip resources used:	Indirectly all of them
Code assumptions:		Evil Genius only
Purpose:				Measure two temperature sensors and trigger a latching relay to be either on or off, which in turn will control a fan. The project is
						battery powered and will spend most of it's time in sleep mode, waiting to take another sample and/or toggle the fan.

Version History:
v0.0.0	2013-07-11  Craig Comberbach
	Compiler: C30 v3.31		IDE: MPLABx 1.80	Tool: RealICE	Computer: Intel Xeon CPU 3.07 GHz, 6 GB RAM, Windows 7 64 bit Professional SP1
	Blinks an LED
	First version
**************************************************************************************************/
/*************    Header Files    ***************/
#include "Project Setup.h"
#include "Initialize.h"
#include "A2D.h"

/************* Semantic Versioning***************/
//This code requires Initialize.c to fulfill it's roll
#if INITIALIZE_MAJOR != 0
	#warning "Initialize.c has Major has changed"
#elif INITIALIZE_MINOR != 0
	#warning "Initialize.c has new features that this code may benefit from"
#elif INITIALIZE_PATCH != 0
	#warning "Initialize.c has had a bug fix, you should check to see that we weren't relying on a bug for functionality"
#endif

//This code requires A2D.c to fulfill it's roll
#if A2D_MAJOR != 0
	#warning "A2D.c has Major has changed"
#elif A2D_MINOR != 0
	#warning "A2D.c has new features that this code may benefit from"
#elif A2D_PATCH != 0
	#warning "A2D.c has had a bug fix, you should check to see that we weren't relying on a bug for functionality"
#endif

/************Arbitrary Functionality*************/
/*************   Magic  Numbers   ***************/
/***********State Machine Definitions*************/
/*************  Global Variables  ***************/
/*************Function  Prototypes***************/
/************* Device Definitions ***************/
//_FBS(BWRP_OFF & BSS_OFF)
//_FGS(GWRP_OFF & GSS0_OFF)
_FOSCSEL(FNOSC_FRCDIV)
//_FOSC(POSCMD_NONE & OSCIOFNC_ON & POSCFREQ_MS & SOSCSEL_SOSCLP & FCKSM_CSDCMD)
//_FWDT(WDTPS_PS32768 & FWDTEN_OFF & WINDIS_OFF)
//_FPOR(BOREN_BOR0 & PWRTEN_ON & I2C1SEL_PRI & BORV_V30 & MCLRE_ON)
_FICD(ICS_PGx2)

/************* Module Definitions ***************/
/************* Other  Definitions ***************/

int main()
{
	//Initialize pins, modules, etc
	Initialize_Microchip();

	while(1)
	{
//		A2D_Routine();

		//TODO - Main Loop Wheel Spin
	}

	return;
}
