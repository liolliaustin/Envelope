#include "Envelope.h"
#include <iostream>
#include <hls_stream.h>
#include "math.h"

using namespace std;

int main() {

	hls::stream<float> wave_in("wave_in");
	hls::stream<float> wave_out("wave_out");

	int press = 1;





	int i = 0;
	while (i < 10000) {
		wave_in << 1;
		envelope(

			wave_in,
			wave_out,

			press,
			1000,
			2000,
			0.6,
			3000

		);

		if(i==4)
			press = 0;

		float tmp;
		wave_out >> tmp;
		cout << tmp << "\t";
		i++;
	}
}
