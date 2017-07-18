#include <stdio.h>
#include <stdlib.h>

int permutations(int, int **, int **, int);

int main() {
  int i, n;

  scanf("%d", &n);

  int *a = (int *)malloc(sizeof(int) * (n + 1));
  int *b = (int *)malloc(sizeof(int) * (n + 1));

  for (i = 0; i <= n; i++)
    a[i] = 0;

  permutations(n, &a, &b, 1);

  free(a);
  free(b);
}

int permutations(int n, int **a, int **b, int k) {
  int i, m;

  for (i = 1; i <= n; i++) {
    if ((*a)[i] == 0) {
      (*b)[k] = i;

      if (k == n) {
        for (m = 1; m <= n; m++)
          printf("%d ", (*b)[m]);
        printf("\n");
        return 0;
      }

      (*a)[i] = 1;
      k++;
      permutations(n, a, b, k);
      k--;
      (*a)[i] = 0;
    }
  }
}
