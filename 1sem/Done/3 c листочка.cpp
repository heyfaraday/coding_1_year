#include <conio.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
  int N;

  scanf("%d", &N);

  int *arr = (int *)malloc(sizeof(int) * N);

  for (int i = 0; i < N; i++) {
    arr[i] = rand();
    printf("%d ", arr[i]);
  }

  printf("\n");

  int c;

  for (int i = 0; i < N - 1; i++) {
    for (int j = 0; j < N - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        c = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = c;
      }
    }
  }

  for (int i = 0; i < N; i++)
    printf("%d ", arr[i]);

  free(arr);
  getch();

  return 0;
}
