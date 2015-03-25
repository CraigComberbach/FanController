#ifndef CONFIG_H
#define	CONFIG_H

//Hardware specific include file
#include <p24F16KA101.h>

//Clock Frequency
#define FOSC_HZ	8000000	//8MHz

//Frequency Definitions
enum FREQUENCY_UNITS
{
	Hz,
	kHz,
	MHz,
};

//Timers
//#define MAIN_LOOP	TIMER1
//#define UNUSED_TMR2	TIMER2
//#define UNUSED_TMR3	TIMER3

//I2C Modules
//#define I2C_1	1
//#define I2C_2	2
//#define I2C_3	3
//#define I2C_USE_MASTER
//#define I2C_USE_SLAVE

//SPI Modules
enum
{
	SPI_TEST_MODULE,		//SPI1
	NUMBER_OF_SPI_MODULES,
};

//UART Modules
//#define UART1	1
//#define UART2	2
//#define UART3	3
//#define UART4	4

//Capture Compare Modules
//#define OC1		1
//#define OC2		2
//#define OC3		3
//#define OC4		4
//#define OC5		5
//#define OC6		6
//#define OC7		7
//#define OC8		8

//Fatal Errors
//enum
//{
//	TIMER_LIBRARY,
//	I2C_LIBRARY,
//	SPI_LIBRARY,
//	UART_LIBRARY,
//	A2D_LIBRARY,
//	CAPTURE_COMPARE_LIBRARY,
//	PINS_LIBRARY
//};

//Timers
//extern const struct TIMER_DEFINITION BLINKING_LED;
//extern const struct TIMER_DEFINITION UNUSED_TMR2;
//extern const struct TIMER_DEFINITION UNUSED_TMR3;

//Pins
extern const struct PIN_DEFINITION PIN_LED;				//RA0
extern const struct PIN_DEFINITION PIN_TEMPERATURE1;	//RA1
extern const struct PIN_DEFINITION PIN_TEMPERATURE2;	//RA2
extern const struct PIN_DEFINITION PIN_RA3;				//RA3
extern const struct PIN_DEFINITION PIN_RA4;				//RA4
extern const struct PIN_DEFINITION PIN_RA6;				//RA6
extern const struct PIN_DEFINITION PIN_RB2;				//RB2
extern const struct PIN_DEFINITION PIN_RB4;				//RB4
extern const struct PIN_DEFINITION PIN_RB7;				//RB7
extern const struct PIN_DEFINITION PIN_VOC_SCL;			//RB8
extern const struct PIN_DEFINITION PIN_VOC_SDA;			//RB9
extern const struct PIN_DEFINITION PIN_RB12;			//RB12
extern const struct PIN_DEFINITION PIN_RB13;			//RB13
extern const struct PIN_DEFINITION PIN_RB14;			//RB14
extern const struct PIN_DEFINITION PIN_RB15;			//RB15

//A2D Pin Definitions
enum A2D_PIN_DEFINITIONS
{
//	A2D_A0				= 0,	//A0
	A2D_TEMPERATURE1	= 1,	//A1
//	A2D_A2,						//A2 - PGD
//	A2D_A3,						//A3 - PGC
	A2D_TEMPERATURE2	= 4,	//A4
//	A2D_A5				= 5,	//A5
//	A2D_A10				= 10,	//A10
//	A2D_A11				= 11,	//A11
//	A2D_A12				= 12,	//A12
};

//Libaries
//A2D Library
#define A2D_MAJOR	1
#define A2D_MINOR	0
#define A2D_PATCH	0

//Pins Library
#define PINS_MAJOR	1
#define PINS_MINOR	0
#define PINS_PATCH	0

//Pins CTMU
#define CTMU_MAJOR	0
#define CTMU_MINOR	0
#define CTMU_PATCH	0

//Pins SPI
#define SPI_MAJOR	0
#define SPI_MINOR	0
#define SPI_PATCH	0

void Configure_For_Fan_Control(void);

#endif	/* CONFIG_H */
