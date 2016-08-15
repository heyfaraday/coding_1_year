#include <stdio.h>

int x;

int main(){

asm(
	"movl $10, %ecx\n" 
"cycle:\n"
	"cmp $0, %ecx"
	"subl $1, %ecx"	
	"jge cycle"
	
	"movl %ecx, x\n"	

);

printf("%d", x);
return 0;
}
