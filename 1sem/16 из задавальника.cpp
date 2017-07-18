#include <conio.h>
#include <math.h>
#include <stdio.h>

struct fraction {
  char sign;
  int ch, zn;

  void In() {
    scanf("%d", &ch);
    scanf("%d", &zn);

    reduce();
  }

  void reduce() {
    sign = 1;

    if (ch * zn < 0) {
      sign = -1;
      ch = abs(ch);
      zn = abs(zn);
    }

    if (ch % zn == 0) {
      ch = ch / zn;
      zn = 1;
    }

    if (zn % ch == 0) {
      zn = zn / ch;
      ch = 1;
    }

    for (int i = 2; i <= zn || i <= ch; i++) {
      if (zn % i == 0 && ch % i == 0) {
        zn = zn / i;
        ch = ch / i;
        i--;
      }
    }
  }
};

fraction sum(fraction a, fraction b) {
  fraction c;
  c.zn = a.zn * b.zn;
  c.ch = a.ch * b.zn + b.ch * a.zn;
  c.reduce();
  return c;
}

fraction min(fraction a, fraction b) {
  fraction c;
  c.zn = a.zn * b.zn;
  c.ch = a.ch * b.zn - b.ch * a.zn;
  c.reduce();
  return c;
}

fraction pr(fraction a, fraction b) {
  fraction c;
  c.zn = a.zn * b.zn;
  c.ch = a.ch * b.ch;
  c.reduce();
  return c;
}

fraction de(fraction a, fraction b) {
  fraction c;
  c.zn = a.zn * b.ch;
  c.ch = a.ch * b.zn;
  c.reduce();
  return c;
}

int main() {
  fraction a, b, c;

  char chr;
  scanf("%c", &chr);

  a.In();
  b.In();

  switch (chr) {
  case '+':
    c = sum(a, b);
    break;

  case '-':
    c = min(a, b);
    break;

  case '*':
    c = pr(a, b);
    break;

  case '/':
    c = de(a, b);
    break;
  }

  printf("\n");

  int p;
  if (c.sign == -1) {
    printf("  %d\n", c.ch);
    if (c.zn > c.ch) {
      for (p = 10; c.zn / p > 0; p *= 10)
        ;
    } else {
      for (p = 10; c.ch / p > 0; p *= 10)
        ;
    }
    printf("- ");
    for (int i = 10; i <= p; i *= 10)
      printf("-");
    printf("\n");
    printf("  %d\n", c.zn);
  } else {
    printf("%d\n", c.ch);
    if (c.zn > c.ch) {
      for (p = 10; c.zn / p > 0; p *= 10)
        ;
    } else {
      for (p = 10; c.ch / p > 0; p *= 10)
        ;
    }
    for (int i = 10; i <= p; i *= 10)
      printf("-");
    printf("\n");
    printf("%d\n", c.zn);
  }

  getch();
  return 0;
}
