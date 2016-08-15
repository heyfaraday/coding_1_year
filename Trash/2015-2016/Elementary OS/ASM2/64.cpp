#include <stdio.h>

int m;
int main(){
m=1;
asm(
"shll $8, m\n"
);

printf("%d", m);
return 0;
}
