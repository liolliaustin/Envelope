#include "Envelope.h"
#include <iostream>
#include <hls_stream.h>
#include "math.h"

using namespace std;

int main() {

	hls::stream<float> wave_in("wave_in");
	hls::stream<float> wave_out("wave_out");

	int press = 1;
	int change = 0;


	for(float j=0; j<2*3.14; j+=0.006283){

		wave_in << cos(j);
	}




	int i = 0;
	while (i < 1000) {

		envelope(

			wave_in,
			wave_out,

			press,
			50,
			70,
			1.0,
			150

		);

		if(i==700)
			press = 0;

		if(i==900){
			change = 1;
		}
		if(i==901){
			change = 0;
			press = 1;
		}




		float tmp;
		wave_out >> tmp;
		cout << tmp << "\t";
		i++;
	}
}
