#ifndef __ENVELOPE_INCLUDED__
#define __ENVELOPE_INCLUDED__

#include <hls_stream.h>

float envelope(

	hls::stream<float> & wave_in,
	hls::stream<float> & wave_out,

	int press,
	int change,
	float attackSlope,
	int attackDuration, 
	float decaySlope,
	int decayDuration, 
	int sustainAmplitude, 
	int sustainDuration, 
	float releaseSlope,
	int releaseDuration

);

#endif