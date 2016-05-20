#include<stdio.h>

int a;
float p;

float PiViet(int a);
float PiBaselProblem(int a);
float PiWallis(int a);
float PiLeibniz(int a);

int i;

int main(void)
{
printf("Viet\n");
for (i=1; i<20; i++)
{
p=PiViet(i);
printf("%9.8f\n", p);
};

printf("Basel problem\n");
for (i=1; i<=1000000; i*=10)
{
p=PiBaselProblem(i);
printf("%9.8f\n", p);
};

printf("Wallis\n");
for (i=1; i<=31; i+=3)
{
p=PiWallis(i);
printf("%9.8f\n", p);
};

printf("Leibniz\n");
for (i=1; i<=400000; i*=2)
{
p=PiLeibniz(i);
printf("%9.8f\n", p);
};
return 0;
}
