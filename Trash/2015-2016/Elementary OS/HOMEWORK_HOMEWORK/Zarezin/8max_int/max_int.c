#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int mas_max(int* mas, int n);

int main()
{
srand(time(NULL));
int n, i, *a;
scanf("%d", &n);
printf("array\n");
a=(int*)malloc(n*sizeof(int));
for (i=0;i<n;i++)
{
	a[i]=(rand() - RAND_MAX / 2) / 1000000;
	printf("%d\n", a[i]);
}
i=mas_max(a, n);
printf("max %d\n", i);
free(a);
return 0;
}
