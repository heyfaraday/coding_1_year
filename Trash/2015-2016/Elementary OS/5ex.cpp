#include <stdio.h>

int m[32] = {};
int x = 64;
int y = 63;
int z = 0;


int main(){

asm(

"	movl x, %eax\n"
"	xor y, %eax\n"
"	movl $31, %ecx"
"cycle: 

"	rcl $1, %edx"
"	cmpl $1, %edx"
"	jne cyclee"
"	movl %ecx, z"
);

printf("%d", z);

asm(

"cyclee:
"	loop cycle
);

return 0;
}
