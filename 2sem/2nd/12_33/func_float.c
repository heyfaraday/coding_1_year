#include <stdio.h>
#include <stdlib.h>

float a[3], b[3], g[3];

float *sum(float *x, float *y);   // Сложение
float *cmul(float *x, float *y);  // Умножение на число
float *scmul(float *x, float *y); // Скалярное произведение
float *scmul_g(float *x, float *y,
               float *z); // Скалярное произведение с заданной
// квадратичной формой, приведенной
// к диагональному виду
float *vmul(float *x, float *y); // Векторное произведение

int main(int argc, char const *argv[]) {

  float *c = (float *)malloc(3 * sizeof(int));
  float l;

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
    scanf("%f", a + j);
  for (j = 0; j < 3; j++)
    scanf("%f", b + j);

  if (s == '+') {
    c = sum(a, b);

    printf("Result:\n");
    for (j = 0; j < 3; j++)
      printf("%f ", c[j]);
  }

  if (s == 'c') {
    c = cmul(a, b);

    printf("Result:\n");
    for (j = 0; j < 3; j++)
      printf("%f ", c[j]);
  }

  if (s == 'v') {
    c = vmul(a, b);

    printf("Result:\n");
    for (j = 0; j < 1; j++)
      printf("%f ", c[j]);
  }

  if (s == 'm') {
    c = scmul(a, b);

    printf("Result:\n");
    printf("%f ", c[0]);
  }

  if (s == 'g') {
    for (j = 0; j < 3; j++)
      scanf("%f", g + j);

    c = scmul_g(a, b, g);

    printf("Result:\n");
    printf("%f ", c[0]);
  }

  free(c);
  return 0;
}
