#include <stdio.h>

int m[32] = {};
int x = 64;
int y = 63;
int z = 0;

int main(){

asm(

"movl x, %eax\n"
"xor y, %eax\n"
"movl %eax, z\n"

);

printf("%d", z);
return 0;
}
