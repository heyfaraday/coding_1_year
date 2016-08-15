#include <stdio.h>

int x,y;
int m[32] = {};
int main(){

x=5;
y=0;

asm(
"movl $32, %ecx\n"
"cikl:sarl $1, x\n"
"pushf\n"
"popq %rax\n"
"and $1, %eax\n"
"shll $2, %ecx\n"
"movl %ecx, y"
"movl %eax, (m+y*$4)\n"
"shrl $2, %ecx\n"
"loop cikl"
);

for(int i = 1;i<=32;i++) printf ("%d",m[i]);
return 0;
}
