#include <stdio.h>

int m;
int main(){
m=1;

asm(
"movl $100, %eax\n"

"shrl $5, %eax\n"

"shll $31, %eax\n"

"shrl $25, %eax\n"

"movl % eax, m"
);

printf("%d", m);
return 0;
}
