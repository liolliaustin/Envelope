#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <hls_stream.h>
#include "Envelope.h"

void envelope(

	hls::stream<float> & wave_in,
	hls::stream<float> & wave_out,

	int press,
	int attackDuration,
	int decayDuration, 
	int sustainAmplitude, 
	int sustainDuration,
	int releaseDuration

){
#pragma HLS INLINE

#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS INTERFACE axis register both port=wave_in
#pragma HLS INTERFACE axis register both port=wave_out

#pragma HLS INTERFACE s_axilite port=press bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=attackDuration bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=decayDuration bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=sustainAmplitude bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=sustainDuration bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=releaseDuration bundle=CTRL_BUS

	static int time = 0;
	static float attackSlope = (float)MAX_ATTACK/attackDuration;
	static float decaySlope = (float)(sustainAmplitude - MAX_ATTACK)/(decayDuration - attackDuration);
	static float releaseSlope=(float)(0-sustainAmplitude)/(releaseDuration - sustainDuration);

	float resultAmplitude;

	static int releaseTime = releaseDuration;
	static int sustainTime = sustainDuration;
	static int wait = 0;

	wave_in >> resultAmplitude;

	if(press)
		wait = 0;
	else if(!press && time < sustainTime)
		time = sustainTime;

	if(press >= 1 && time == sustainTime - 1){
		sustainTime += 1;
		releaseTime += 1;
	}

	if(wait){
		time = 0;
	}

	if(time < attackDuration){
		resultAmplitude *= attackSlope*time;
	}

	else if(time < decayDuration){
		resultAmplitude *=  decaySlope*(time- attackDuration) + MAX_ATTACK ;
	}

	else if( time < sustainTime){
		resultAmplitude *= sustainAmplitude;
	}

	else if(time < releaseTime){
		resultAmplitude *= releaseSlope*(time - sustainTime) + sustainAmplitude;
	}

	else {
		resultAmplitude = 0;
		wait = 1;
	}

	time++;

	wave_out << resultAmplitude;
}
