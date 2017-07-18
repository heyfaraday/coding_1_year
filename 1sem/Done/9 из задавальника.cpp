#include <stdio.h>
#include <stdlib.h>

int main() {
  int n;
  scanf("%d", &n);

  int *p;
  int k = sizeof(int);
  p = (int *)malloc(k * n * 2);

  for (int i = 2; i <= n; i++)
    p[i] = i;

  p[0] = 0;
  p[1] = 0;

  int z = 2;
  while (z < n) {
    for (int i = 2 * z; i <= n; i += z)
      p[i] = 0;

    z++;
    while (p[z] == 0)
      z++;
  }

  for (int i = 1; i <= n; i++) {
    if (p[i] != 0)
      printf("%d  ", p[i]);
  }

  free(p);
  return 0;
}
