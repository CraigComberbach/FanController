#ifndef CONFIG_H
#define	CONFIG_H

//Hardware specific include file
#include <p24F08KL200.h>

//Clock Frequency
#define FOSC_HZ	8000000	//8MHz

//Timers
#define UNUSED_TMR1	TIMER1
#define MAIN_LOOP	TIMER2
#define UNUSED_TMR3	TIMER3

//I2C Modules
#define I2C_1	1
#define I2C_2	2
#define I2C_3	3

//SPI Modules
#define SPI1	1
#define SPI2	2
#define SPI3	3

//UART Modules
#define UART1	1
#define UART2	2
#define UART3	3
#define UART4	4

//Capture Compare Modules
#define OC1		1
#define OC2		2
#define OC3		3
#define OC4		4
#define OC5		5
#define OC6		6
#define OC7		7
#define OC8		8

//Libaries
//A2D Library
#define A2D_MAJOR	0
#define A2D_MINOR	1
#define A2D_PATCH	0

//Pins Library
#define PINS_MAJOR	0
#define PINS_MINOR	1
#define PINS_PATCH	0

//I2C Library
#define I2C_MAJOR	0
#define I2C_MINOR	1
#define I2C_PATCH	0

//Timer Library
#define TIMERS_MAJOR	0
#define TIMERS_MINOR	3
#define TIMERS_PATCH	0

void Configure_For_Dynamic_Fan_Control(void);

#endif	/* CONFIG_H */
