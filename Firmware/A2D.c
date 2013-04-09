/*
 * File:   A2D.c
 * Author: Craig
 *
 * Created on August 4, 2011, 10:54 PM
 */

#include "pic.h"
#include "A2D.h"

//Define how to change channels
#define CHANGE_CHANNEL_0   CHS0 = 0; CHS1 = 0
#define CHANGE_CHANNEL_1   CHS0 = 0; CHS1 = 1
#define CHANGE_CHANNEL_2   CHS0 = 1; CHS1 = 0
#define CHANGE_CHANNEL_3   CHS0 = 1; CHS1 = 1

//Start a conversion
#define START_A2D   GODONE = 1

//Check on the progress of conversion
#define POLL_A2D    GODONE

//Magic Numbers
#define MAX_DELAY   100	    //For the 500 kHz internal A2D dedicated oscillator, 80 should be enough time to finish, 100 was chosen for a nice round larger number

unsigned int slow_A2D(unsigned char channel);
unsigned char change_channel(unsigned char channel);

unsigned int slow_A2D(unsigned char channel)
{
    unsigned char   delay;//Used for causing a delay while something else finishs

    //Check if the channel needs changing
    if(!change_channel(channel))
	for(delay = 0; delay <= MAX_DELAY; ++delay);//Wait for channel changing to take place, wait same time as a conversion would to take place

    //Start Read A2D
    START_A2D;

    //Wait for read to finish
    delay = 0;//Clear the delay for use of breaking out of the polling section
    while(POLL_A2D)//Wait for the A2D to finish
	if(++delay > MAX_DELAY)//Test how long we we've been in this loop
	    break;//We were in there too long!!!

    return ((ADRESH << 8) | ADRESL);
}

//Changes the current A2D Channel vs the selected one. If they are the same, it returns a 1, if different a 0
unsigned char change_channel(unsigned char channel)
{
    switch(channel)
    {
	case CHANNEL_0:
	    if((CHS1 != 0) || (CHS0 != 0))
	    {
		CHANGE_CHANNEL_0;//Change the channel
		return 1;//We need to give a slight delay
	    }
            break;
        case CHANNEL_1:
	    if((CHS1 != 0) || (CHS0 != 1))
	    {
		CHANGE_CHANNEL_1;//Change the channel
		return 1;//We need to give a slight delay
	    }
            break;
	case CHANNEL_2:
	    if((CHS1 != 1) || (CHS0 != 0))
	    {
		CHANGE_CHANNEL_2;//Change the channel
		return 1;//We need to give a slight delay
	    }
            break;
        case CHANNEL_3:
	    if((CHS1 != 1) || (CHS0 != 1))
	    {
		CHANGE_CHANNEL_3;//Change the channel
		return 1;//We need to give a slight delay
	    }
            break;
    }

    return 0;//Already on the correct channel
}