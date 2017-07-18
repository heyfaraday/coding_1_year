#include <stdio.h>
#include <stdlib.h>

int a[3], b[3], g[3];

int *sum(int *x, int *y);   // Сложение
int *cmul(int *x, int *y);  // Умножение на число
int *scmul(int *x, int *y); // Скалярное произведение
int *scmul_g(int *x, int *y, int *z); // Скалярное произведение с заданной
// квадратичной формой, приведенной
// к диагональному виду
int *vmul(int *x, int *y); // Векторное произведение

int main(int argc, char const *argv[]) {

  int *c = (int *)malloc(3 * sizeof(int));

  // Изначально вводит тип предполагаемой операции:
  // + - сложение
  // c - умножение на число
  // m - скалярное произведение
  // v - векторное произведение
  // g - скалярной произведение с кв.формой

  int j;

  char s;
  scanf("%s\n", &s);

  for (j = 0; j < 3; j++)
    scanf("%d", a + j);
  for (j = 0; j < 3; j++)
    scanf("%d", b + j);

  if (s == '+') {
    c = sum(a, b);

    printf("Result:\n");
    int j;
    for (j = 0; j < 3; j++)
      printf("%d ", c[j]);
  }

  if (s == 'c') {
    c = cmul(a, b);

    printf("Result:\n");
    int j;
    for (j = 0; j < 3; j++)
      printf("%d ", c[j]);
  }

  if (s == 'v') {
    c = vmul(a, b);

    printf("Result:\n");
    int j;
    for (j = 0; j < 1; j++)
      printf("%d ", c[j]);
  }

  if (s == 'm') {
    c = scmul(a, b);

    printf("Result:\n");
    printf("%d ", c[0]);
  }

  if (s == 'g') {
    for (j = 0; j < 3; j++)
      scanf("%d", g + j);

    c = scmul_g(a, b, g);

    printf("Result:\n");
    printf("%d ", c[0]);
  }

  free(c);
  return 0;
}
