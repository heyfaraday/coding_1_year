#include <stdio.h>

int x;

int main(){

asm(
	"movl $10, %eax\n" 
	"movl %eax, x\n"	

);

printf("%d", x);
return 0;
}
