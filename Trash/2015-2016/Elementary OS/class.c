#include <stdio.h>
int sum = 0, arr[10]={0,1,2,3,4,5,6,7,8,9}, fifth;

int main(){

asm(	"movl (arr+20), %ecx \n" // ecx = arr[5]
	"movl %ecx, fifth \n"	// fifth = ecx
	"movl $40, %ecx \n"	// ecx = 40
	"xor %eax, %eax \n"	// eax = 0;


"mark:	 addl arr(%ecx), %eax \n" // eax = eax + arr(ecx) - last element

	"subl $4, %ecx \n" // ecx-=4 {addl up}
	"cmpl $0, %ecx \n" // ecx <> 0;
	"jg mark\n" // repeat for ecx > 0
	"movl %eax, sum\n" // sum = eax
	);

print("fifth element: %d; sum: %d", fifth, sum);
}



