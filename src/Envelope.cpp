#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <hls_stream.h>
#include "Envelope.h"

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

){
#pragma HLS INLINE

#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS INTERFACE axis register both port=wave_in
#pragma HLS INTERFACE axis register both port=wave_out

#pragma HLS INTERFACE s_axilite port=press bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=attackSlope bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=attackDuration bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=decaySlope bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=decayDuration bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=sustainAmplitude bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=sustainDuration bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=releaseSlope bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=releaseDuration bundle=CTRL_BUS

	static int time = 0;

	float resultAmplitude;

	wave_in >> resultAmplitude;

	if(press){
		sustainDuration +=1;
		releaseDuration +=1;
	}

	if(change){
		time = 0;
	}

	if(time < attackDuration){
		resultAmplitude *= attackSlope*time;
	}

	else if(time < decayDuration){
		resultAmplitude *=  decaySlope*attackDuration + attackSlope*attackDuration - decaySlope*time;
	}

	else if( time < sustainDuration){
		resultAmplitude *= sustainAmplitude;
	}

	else if(time < releaseDuration){
		resultAmplitude *= releaseSlope*sustainDuration + sustainAmplitude - releaseSlope*time;
	}

	else {
		resultAmplitude = 0;
	}

	time++;

	wave_out << resultAmplitude;
}