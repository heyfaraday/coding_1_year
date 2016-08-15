#include <stdio.h>

int x;

int main(){

asm(
	"movb $10, %al\n" 
	"subb $11, %al\n" 	
	"movl %eax, x\n"	

);

printf("%d", x);
return 0;
}
