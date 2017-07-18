#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
  int N, M;

  scanf("%d", &N);
  scanf("%d", &M);

  int *arr = (int *)malloc(sizeof(int) * N * M);

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < M; j++) {
      printf("%d ", arr[i * M + j] = rand());
    }
    printf("\n");
  }
  printf("\n");

  int *arrt = (int *)malloc(sizeof(int) * N * M);

  int k = 0;
  for (int i = 0; i < M; i++) {
    for (int j = 0; j < N; j++) {
      arrt[k] = arr[j * M + i];
      k++;
    }
  }

  for (int i = 0; i < M; i++) {
    for (int j = 0; j < N; j++) {
      printf("%d ", arrt[i * N + j]);
    }
    printf("\n");
  }

  free(arr);
  free(arrt);

  getch();
  return 0;
}
