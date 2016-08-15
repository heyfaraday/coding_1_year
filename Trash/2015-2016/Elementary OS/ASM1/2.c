#include <stdio.h>

int x;
int main(){
	asm("addl $10,x");

	printf("%d",x);
	return 0;
}
