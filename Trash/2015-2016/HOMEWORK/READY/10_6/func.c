#include<stdio.h>
#include<stdlib.h>

void func(int* a, int n, int m, int* b);

int i, j;

int main(int argc, char const *argv[]) {

	int n;
	scanf("%d\n", &n);

	int* a = (int*) malloc (sizeof(int) * n * n);
	int* b = (int*) malloc (sizeof(int) * n * n);

	for (i = 0; i < n; i++)
	{
		for (j = 0; j < n; j++)
		{
			scanf("%d", &a[i*n + j]);
		}
	}

	printf("\n");

	func(a, n, n, b);

	printf("\n");
	for (i = 0; i < n; i++)
	{
		for (j = 0; j < n; j++)
		{
			printf("%d ", *(b + i*n + j));
		}
		printf("\n");
	}

	free(a);
	free(b);
	return 0;
}
