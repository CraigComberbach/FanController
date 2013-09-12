#ifndef PROJECT_SETUP_H
#define	PROJECT_SETUP_H

#define FAN_CONTROLLER

//I2C Modules
#if defined FAN_CONTROLLER
	
#endif

//SPI Modules
#if defined FAN_CONTROLLER

#endif

//UART Modules
#if defined FAN_CONTROLLER

#endif

#endif	/* PROJECT_SETUP_H */

//This should be in every file
#if defined FAN_CONTROLLER
	#include <p24F08KL200.h>
#endif