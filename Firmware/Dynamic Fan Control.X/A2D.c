/**************************************************************************************************
Authours:				Craig Comberbach
Target Hardware:		PIC24F
Chip resources used:	A2D Module
Code assumptions:
Purpose:				Read the Thermistor inputs

Version History:
v0.01	Y-M-D  Craig Comberbach
	Compiler: C30 v3.31	IDE: MPLABx 1.80	Tool: RealICE	Computer: Intel Xeon CPU 3.07 GHz, 6 GB RAM, Windows 7 64 bit Professional SP1
	First version
**************************************************************************************************/
/*************    Header Files    ***************/
#include <p24F08KL200.h>
#include "Controller Setup.h"

/************Arbitrary Functionality*************/
/*************   Magic  Numbers   ***************/
/*************    Enumeration     ***************/
/***********State Machine Definitions*************/
/*************  Global Variables  ***************/
/*************Function  Prototypes***************/
/************* Device Definitions ***************/
/************* Module Definitions ***************/
/************* Other  Definitions ***************/

void Initialize_A2D(void)
{
	//Analog Input Configuration Register
	ANCFGbits.VBGEN		= 0;//0 = Band gap is not available to the A/D Converter

	//A/D Input Scan Select Register
	AD1CSSLbits.CSSL0	= 0;//0 = Analog channel omitted from input scan
	AD1CSSLbits.CSSL1	= 0;//0 = Analog channel omitted from input scan
//	AD1CSSLbits.CSSL2	= Unimplemented on this chip
//	AD1CSSLbits.CSSL3	= Unimplemented on this chip
//	AD1CSSLbits.CSSL4	= Unimplemented on this chip
//	AD1CSSLbits.CSSL6	= Unimplemented on this chip (But not specified as such)
//	AD1CSSLbits.CSSL7	= Unimplemented on this chip (But not specified as such)
//	AD1CSSLbits.CSSL8	= Unimplemented on this chip (But not specified as such)
	AD1CSSLbits.CSSL9	= 0;//0 = Analog channel omitted from input scan
	AD1CSSLbits.CSSL10	= 0;//0 = Analog channel omitted from input scan
//	AD1CSSLbits.CSSL11	= Unimplemented on this chip
//	AD1CSSLbits.CSSL12	= Unimplemented on this chip
	AD1CSSLbits.CSSL13	= 1;//1 = Corresponding analog channel selected for input scan
	AD1CSSLbits.CSSL14	= 1;//1 = Corresponding analog channel selected for input scan
	AD1CSSLbits.CSSL15	= 0;//0 = Analog channel omitted from input scan
//TODO - A2D Initialize
	//A/D Input Select Register
	AD1CHSbits.CH0SA	= ;//
	AD1CHSbits.CH0NA	= ;//
	AD1CHSbits.CH0SB	= ;//
	AD1CHSbits.CH0NB	= ;//

	//A/D Control Register 3
	AD1CON3bits.ADCS	= ;//
	AD1CON3bits.SAMC	= ;//
	AD1CON3bits.PUMPEN	= ;//
	AD1CON3bits.EXTSAM	= ;//
	AD1CON3bits.ADRC	= ;//

	//A/D Control Register 2
	AD1CON2bits.ALTS	= ;//
	AD1CON2bits.SMPI	= ;//
	AD1CON2bits.CSCNA	= ;//
	AD1CON2bits.OFFCAL	= ;//
	AD1CON2bits.VCFG	= ;//

	//A/D Control Register 1
	AD1CON1bits.DONE	= ;//
	AD1CON1bits.SAMP	= ;//
	AD1CON1bits.ASAM	= ;//
	AD1CON1bits.SSRC	= ;//
	AD1CON1bits.FORM	= ;//
	AD1CON1bits.ADSIDL	= ;//
	AD1CON1bits.ADON	= ;//

	return;
}

void A2D_Routine(void)
{
	return;
}
