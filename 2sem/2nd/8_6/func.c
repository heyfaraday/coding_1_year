#include <stdio.h>
#include <stdlib.h>

int func(int n, int *a);

int main(int argc, char const *argv[]) {
  int n, i;
  int *a;
  scanf("%d", &n);

  a = (int *)malloc(n * sizeof(int));

  for (i = 0; i < n; i++) {
    scanf("%d", &a[i]);
  }

  int x;
  x = func(n, a);

  printf("%d\n", x);

  free(a);
  return 0;
}
