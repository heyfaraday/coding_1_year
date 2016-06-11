#include<stdio.h>
#include<conio.h>
#include<time.h>
#include<stdlib.h>

int main()
{
	int m[4][4];
	
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			printf("%d ", m[i][j] = rand());
		}
		printf("\n");
	}
	printf("\n");
	
	int maxi = 0; 
	int maxj = 0;
	int mini = 0;
	int minj = 0;
	
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			if (m[i][j] > m[maxi][maxj])
			{
				maxi = i;
				maxj = j;
			}
			if (m[i][j] < m[mini][minj])
			{
				mini = i;
				minj = j;
			}			
		}
	}
	
	int c = m[maxi][maxj];
	m[maxi][maxj] = m[mini][minj];
	m[mini][minj] = c;
	
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			printf("%d ", m[i][j]);
		}
		printf("\n");
	}
	
	getch();
	return 0;
}
