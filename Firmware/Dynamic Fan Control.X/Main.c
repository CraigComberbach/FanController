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
#include "Config.h"
#include "Timers.h"
#include "A2D.h"
#include "Pins.h"

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
	Configure_For_Dynamic_Fan_Control();

	while(1)
	{
//		A2D_Routine();
//		Pin_Write(RB8, HIGH);
//		Pin_Write(RB8, LOW);
		//Main loop timing
//		while(Current_Timer(MAIN_LOOP, MILLI_SECONDS) < 999/*mS*/);
	}

	return 0;
}
