#include <stdio.h>

int x;
int main(){

	asm(	"movl $0, %eax\n"
		"movl $10, %ecx\n"
	"sum:  addl %ecx, %eax\n"
	"	loop sum\n"
		"movl %eax,x");

	printf("%d",x);
	return 0;
}
