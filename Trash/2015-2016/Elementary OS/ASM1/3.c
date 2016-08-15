#include <stdio.h>

int x;
int main(){

	asm(	"movl $0, %eax\n"
	"mark:  addl $10, %eax\n"
		"movl %eax,x");

	printf("%d",x);
	return 0;
}
