/*
 * File:   A2D.h
 * Author: Craig
 *
 * Created on August 4, 2011, 10:48 PM
 */

#ifndef A2D_H
#define A2D_H

//Polls the A2D until finished, will break out if it takes too long!
extern unsigned int slow_A2D(unsigned char channel);

//Allows easy switching between channels
#define CHANNEL_0       1
#define CHANNEL_1       2
#define CHANNEL_2       3
#define CHANNEL_3       4

#endif
