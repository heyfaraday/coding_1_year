#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

float track(float, int);

float track(float **a, int k) {
  float t = 0;

  for (int i = 0; i < k; i++)
    t = t + (*a)[i * k + i];

  return t;
}

int main() {
  int n;

  scanf("%d", &n);

  float *a = (float *)malloc(sizeof(float) * n * n);

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++)
      a[i * n + j] = rand();
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++)
      printf("%f ", a[i * n + j]);
    printf("\n");
  }
  printf("\n");

  printf("%f", track(&a, n));

  free(a);

  getch();
  return 0;
}
