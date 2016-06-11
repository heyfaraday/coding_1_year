#include <stdlib.h>
#include <iostream>
using namespace std;

int sum(int);
int abs(int);

int main() 
{
	int n;
	cin >> n;
	int l = n % 10;
	int p = n % 100;
	int pp = n % 1000;
	int des = (n / 10) % 10;
	int sot = (n / 100) % 100;
	int s = sum(n);
	
	if (l % 2 == 0) cout << 2 << " ";
	if (s % 3 == 0) cout << 3 << " ";
	if (p % 4 == 0) cout << 4 << " ";
	if ((l == 0) || (l == 5)) cout << 5 << " ";
	if ((s % 3 == 0) && (l % 2 == 0)) cout << 6 << " ";
	if ((des * 3 + l) % 7 == 0) cout << 7 << " ";
	if ((n % 1000) % 8 == 0) cout << 8 << " ";
	if (s % 9 == 0) cout << 9 << " ";
	if (l == 0) cout << 10 << " ";
	if (abs((n / 1000) - pp) % 11 == 0) cout << 11 << " ";
	if ((des + 4 * l) % 13 == 0) cout << 13 << " ";
	if (abs(des - 5 * l) % 17 == 0) cout << 17 << " ";
	if ((des + 2 * l) % 19 == 0) cout << 19 << " ";
	if (p % 20 == 0) cout << 20 << "  ";
	if ((sot + 3 * p) % 23 == 0) cout << 23 << " ";
	if (p % 25 == 0) cout << 25 << " ";
	if (sum(n + 1) == 1) cout << "10^k - 1 ";
	if (sum(n - 1) == 1) cout << "10^k + 1 ";
	return 0;
}

int sum(int n) 
{
	int sum = 0;
	while (n) {
		sum += n % 10;
		n /= 10;
	}
	return sum;
}

int abs(int x) 
{
	if (x >= 0) return x;
	else return -x;
}
