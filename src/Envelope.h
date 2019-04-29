#ifndef __ENVELOPE_INCLUDED__
#define __ENVELOPE_INCLUDED__

#include <hls_stream.h>

#define MAX_ATTACK 1

void envelope(

	hls::stream<float> & wave_in,
	hls::stream<float> & wave_out,

	int press,
	int attackDuration,
	int decayDuration, 
	float sustainAmplitude,
	int releaseDuration

);

#endif
