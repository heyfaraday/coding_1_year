#include <stdio.h>

int func(int a);

int main(int argc, char const *argv[]) {
  int x;
  scanf("%d", &x);
  x = func(x);
  printf("%d\n", x);
  return 0;
}
