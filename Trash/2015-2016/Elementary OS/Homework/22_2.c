#include <stdio.h>

int x;

int main(){

asm(
	"movl $10, %ecx\n" 
	"subb $11, %ebx\n"
	"mull %ebx\n"
	"movl %ecx, x\n"	

);

printf("%d", x);
return 0;
}
