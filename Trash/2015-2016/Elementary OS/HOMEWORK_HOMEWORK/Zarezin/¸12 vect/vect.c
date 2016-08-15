#include <stdio.h>
#include <stdlib.h>

int a[3], b[3];

int *SumVect(int *a, int *b);
int *MultConstVect(int *a, int b);
int ScalarMultVect(int *a, int *b);
int *VectMultVect(int *a, int *b);

int main()
{
int i, k, *c=(int*)malloc(3*sizeof(int));

printf("sum\n");
printf("1-st vector\n");
for (i=0;i<3;i++)
	scanf("%d", a+i);
printf("2-nd vector\n");
for (i=0;i<3;i++)
	scanf("%d", b+i);
c=SumVect(a, b);
printf("result sum\n");
for (i=0;i<3;i++)
	printf("%d\n", c[i]);

printf("mult Const\n");
printf("vector\n");
for (i=0;i<3;i++)
	scanf("%d", a+i);
printf("const\n");
scanf("%d", &k);
c=MultConstVect(a, k);
printf("result mult const\n");
for (i=0;i<3;i++)
	printf("%d\n", c[i]);

printf("scalar mult\n");
printf("1-st vector\n");
for (i=0;i<3;i++)
	scanf("%d", a+i);
printf("2-nd vector\n");
for (i=0;i<3;i++)
	scanf("%d", b+i);
k=ScalarMultVect(a, b);
printf("result scalar mult\n");
printf("%d\n", k);

printf("vect mult\n");
printf("1-st vector\n");
for (i=0;i<3;i++)
	scanf("%d", a+i);
printf("2-nd vector\n");
for (i=0;i<3;i++)
	scanf("%d", b+i);
c=VectMultVect(a ,b);
printf("result vect mult\n");
for (i=0;i<3;i++)
	printf("%d\n", c[i]);

return 0;
}
