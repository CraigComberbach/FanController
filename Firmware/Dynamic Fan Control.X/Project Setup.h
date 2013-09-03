#ifndef PROJECT_SETUP_H
#define	PROJECT_SETUP_H

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

#endif	/* PROJECT_SETUP_H */
