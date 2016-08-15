#include <stdio.h>

int x;

int main(){

asm(
	"movl $10, %ecx\n" 
"cycle:\n"
	"subl $1, %ecx"
	"cmpl $0, %ecx"	
	"jge cycle"
	
	"movl %ecx, x\n"	

);

printf("%d", x);
return 0;
}
