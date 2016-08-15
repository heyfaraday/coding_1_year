#include <stdio.h>

int x;

int main(){

asm(
	"movl $10, %edx\n" 
	"subb $11, %ebx\n"
	"mull %ebx\n"
	"movl %edx, x\n"	

);

printf("%d", x);
return 0;
}
