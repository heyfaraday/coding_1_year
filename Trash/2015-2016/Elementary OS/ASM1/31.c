#include <stdio.h>

int x,y;
int main(){
	x=0;
	//if (x==0) y = 1;
	//else y = 2;
	asm(	"movl x, %eax\n"
		"cmpl $0, %eax\n"
		"je equal\n"
		"jmp not equal\n"
	"not_equal: \n"
		"movl $2, %edx\n"
		"movl %edx, y\n"
		"jmp continue\n"

	"equal:\n"
		"movl $1, %edx\n"
		"movl %edx, y\n"

	"continue:\n"
		"movl %eax,x\n");

	printf("%d",x);
	return 0;
}
