#include <conio.h>
#include <stdio.h>

int sumd(int);

int main() {
  int m, s = 0, n = 0;

  scanf("%d", &m);

  for (int i = 1; i <= m; i++) {
    switch (sumd(i)) {
    case -1:
      n++;
      break;
    case 0:
      s++;
      break;
    }
  }

  printf("n%d  s%d  sv%d", n, s, m - n - s);

  getch();
  return 0;
}

int sumd(int n) {
  int s = 1;

  if (n == 1)
    return -1;

  for (int i = 2; i < n; i++) {
    if (n % i == 0)
      s += i;
  }
  if (s < n)
    return -1;
  else {
    if (s == n)
      return 0;
    else
      return 1;
  }
}
