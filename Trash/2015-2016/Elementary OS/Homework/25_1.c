#include <stdio.h>

int x;

int main(){

asm(
	"movl $10, %ecx\n" 
"mark:\n"
	"subl $1, %ecx"
	"cmpl $0, %ecx"	
	"jge mark"
	
	"movl %ecx, x\n"	

);

printf("%d", x);
return 0;
}
