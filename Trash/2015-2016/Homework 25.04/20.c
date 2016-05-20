#include <stdio.h>


int arr[5][5];
int brr[5][5];
int crr[5][5];

int sum = 0;



int main() {

for (size_t i = 0; i < 5; i++) {
  for (size_t j = 0; j < 5; j++) {
    arr[i][j] = 2;
    brr[i][j] = 3;
    crr[i][j] = 0;
  }
};


  for (size_t i = 0; i < 5; i++) {
    for (size_t k = 0; k < 5; k++) {
      for (size_t j = 0; j < 5; j++) {
        sum += arr[i][j]*brr[j][k];
      }
      crr[i][k] = sum;
      sum = 0;
    }
  }



  return 0;
}
