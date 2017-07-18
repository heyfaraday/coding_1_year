#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
  int N, M, L;

  scanf("%d", &N);
  scanf("%d", &M);
  scanf("%d", &L);

  int *a = (int *)malloc(sizeof(int) * N * M);
  int *b = (int *)malloc(sizeof(int) * L * M);

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < M; j++) {
      printf("%d ", a[i * M + j] = rand());
    }
    printf("\n");
  }
  printf("\n");

  for (int i = 0; i < M; i++) {
    for (int j = 0; j < L; j++) {
      printf("%d ", b[i * L + j] = rand());
    }
    printf("\n");
  }
  printf("\n");

  int *c = (int *)malloc(sizeof(int) * L * N);

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < L; j++) {
      c[i * L + j] = 0;
      for (int k = 0; k < M; k++)
        c[i * L + j] += a[i * M + k] * b[k * L + j];
    }
  }

  free(a);
  free(b);

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < L; j++) {
      printf("%d ", c[i * L + j]);
    }
    printf("\n");
  }

  getch();
  free(c);
  return 0;
}
