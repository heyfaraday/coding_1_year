#include <math.h>
#include <stdio.h>
#include <stdlib.h>

void f(int);

int main() {
  int n;
  scanf("%d", &n);
  f(n);
  return 0;
}

void f(int n) {

  if (n < 2)
    printf("%d", n);
  else {

    printf("%d=", n);

    int d = 2;
    int i = 0;

    while (n > 1) {
      if (n % d == 0) {
        int p = 0;
        while (n % d == 0) {
          n /= d;
          p++;
        }
        if (i == 0) {
          printf("%d^%d", d, p);
          i++;
        } else
          printf("*%d^%d", d, p);
      }
      d++;
    }
  }
}
