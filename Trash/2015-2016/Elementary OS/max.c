#include <stdio.h>
int m, i, arr[10], fifth;

int main(){

for (i = 0; i<10; i++) scanf("%d",&arr[i]);

	asm( 
		"movl (arr), %ecx\n"
		"movl $9, %edx\n"
		"movl arr, %eax\n"
		"movl %eax, m\n"
		"cmpl $0, %edx\n"
		"je srav\n"
	"srav:"
		"movl arr(%ecx), %edx\n"
		"cmpl m, %edx\n"
		"jg usl\n"
		"subl $4, %ecx\n"

	"usl:"
		"movl %edx, m\n" );

print ("%d",m);
return 0;

}
		
		

		
