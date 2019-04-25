#ifndef __ENVELOPE_INCLUDED__
#define __ENVELOPE_INCLUDED__

#include <hls_stream.h>

#define MAX_ATTACK 2

void envelope(

	hls::stream<float> & wave_in,
	hls::stream<float> & wave_out,

	int press,
	int attackDuration,
	int decayDuration, 
	int sustainAmplitude, 
	int sustainDuration,
	int releaseDuration

);

#endif
