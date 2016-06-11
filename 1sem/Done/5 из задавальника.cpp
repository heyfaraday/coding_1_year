#include <stdio.h>
#include <stdlib.h>

int factorial(int);
double power(double, int);
double sin(double, int);

int main() 
{
	int a;
	scanf("%d",&a);
	double x;
	scanf("%lf",&x);
	printf("%lf",sin(x, a));
	return 0;
}

int factorial(int n) 
{
	int a = 1;
	for (int i = 2; i < n + 1; i++) {
		a *= i;
	}
	return a;
}

double power(double x, int k) 
{
	if (k == 0) return 1.0;
	else if (k == 1) return x;
	else {
		double a = x;
		int k_;
		if (k < 0) k_ = -k;
		else k_ = k;
		for (int i = 0; i < k_ - 1; i++) {
			a *= x;
		}
		if (k < 0) return 1 / a;
		else return a;
	}
}

double sin(double x, int m) 
{
	double a = 0;
	double d;
	for (int i = 0; i < m + 1; i++) {
		if (i % 2 == 0) d = 1.0;
		else d = -1.0;
		a += (d * power(x, 2 * i + 1)) / (factorial(2 * i + 1));
	}
	return a;
}

