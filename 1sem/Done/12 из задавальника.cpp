#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

int pr(int);

int main()
{
    int n;
    double s = 0;
    
    scanf("%d", &n);

	for (int i = 3; i < n; i += 2)
	{
		if (pr(i))
		{
			s += 1. / i + 1. / (i + 2);
		}
	}

	printf("%lf", s);
	
    getch();
    return 0;
}

int pr(int a)
{
	for (int i = 3; i * i < a + 2; i += 2)
	{
		if (a % i == 0 || (a + 2)  % i == 0){
			return 0;
		}
	}
	return 1;
} 
