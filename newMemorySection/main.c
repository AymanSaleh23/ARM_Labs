#include <stdio.h>

#define X 10
const int ConsInit_s =  90;
short int unInit_a, unInit_b, unInit_c, unInit_d, unInit_e, unInit_f, unInit_g;
unsigned long int __attribute__((section(".sprints"))) SprintsFixedVariable  __attribute__ ((aligned (512))) = 90;
float varInit_h = 90.0;

int main(void){
	int a = X;
	if (varInit_h == unInit_c){
		a = 30;
	}
	else {
		unInit_f= 40.0;
	}
	return 0 ;
}