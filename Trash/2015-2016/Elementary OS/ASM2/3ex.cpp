#include <stdio.h>

int x;
int m[32] = {};
int main(){

x=123;

asm(
"movl $32, %ecx\n"
"cikl:sarl $1, x\n"
"pushf\n"
"popq %rax\n"
"and $0, %eax\n"
"shll $2, %ecx\n"
"movl %eax, m(%ecx)\n"
"shrl $2, %ecx\n"
"loop cik l"
);

for(int i = 0;i<=33;i++) printf ("%d",m[i]);
return 0;
}
