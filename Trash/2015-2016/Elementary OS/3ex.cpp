#include <stdio.h>

float x;
float m[64] = {};
int main(){

x=34.5;

asm(
"movl $63, %ecx\n"
"cikl:sarl $1, x\n"
"pushf\n"
"popq %rax\n"
"and $1, %rax\n"
"shll $2, %ecx\n"
"movq %rax, m(%ecx)\n"
"shrl $2, %ecx\n"
"loop cikl\n"
);

for(int i = 1;i<=64;i++) printf ("%f",m[i]);
return 0;
}
