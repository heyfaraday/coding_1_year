#include <stdio.h>
#include <stdlib.h>

float a[4], b[4];

float *SumVect(float *a, float *b);
float *MultConstVect(float *a, float b);
float ScalarMultVect(float *a, float *b);
float *VectMultVect(float *a, float *b);

int main()
{
int i;
float* c, k;

printf("sum\n");
printf("1-st vector\n");
for (i=0;i<3;i++)
	scanf("%f", a+i);
printf("2-nd vector\n");
for (i=0;i<3;i++)
	scanf("%f", b+i);
c=SumVect(a, b);
printf("result sum\n");
for (i=0;i<3;i++)
	printf("%f\n", c[i]);

printf("mult Const\n");
printf("vector\n");
for (i=0;i<3;i++)
	scanf("%f", a+i);
printf("const\n");
scanf("%f", &k);
c=MultConstVect(a, k);
printf("result mult const\n");
for (i=0;i<3;i++)
	printf("%f\n", c[i]);

printf("scalar mult\n");
printf("1-st vector\n");
for (i=0;i<3;i++)
	scanf("%f", a+i);
printf("2-nd vector\n");
for (i=0;i<3;i++)
	scanf("%f", b+i);
k=ScalarMultVect(a, b);
printf("result scalar mult\n");
printf("%f\n", k);

printf("vect mult\n");
printf("1-st vector\n");
for (i=0;i<3;i++)
	scanf("%f", a+i);
printf("2-nd vector\n");
for (i=0;i<3;i++)
	scanf("%f", b+i);
c=VectMultVect(a ,b);
printf("result vect mult\n");
for (i=0;i<3;i++)
	printf("%f\n", c[i]);
return 0;
}
