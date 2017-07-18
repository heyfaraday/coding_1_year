#include <conio.h>
#include <stdio.h>

int NOD(int, int);
int NODr(int, int);

int main(void) {
  int n, m;
  scanf("%d%d", &n, &m);
  printf("%d  %d  %d", NODr(n, m), NOD(n, m), m * n / NOD(n, m));
  getch();
  return 0;
}

int NOD(int n, int m) {
  int c, i = 2, x = 1;

  if (m > n) {
    c = m;
    m = n;
    n = c;
  }

  while (i <= m) {
    if ((n % i == 0) && (m % i == 0)) {
      x *= i;
      n = n / i;
      m = m / i;
    } else {
      i++;
    }
  }
  return x;
}

int NODr(int n, int m) {
  int c;

  if (m > n) {
    c = m;
    m = n;
    n = c;
  }

  if (n % m == 0)
    return m;
  if (m == 1)
    return n;
  else
    return NODr(m, n - m);
}
