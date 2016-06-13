#include <stdio.h>

#define LOWER 0    // lower limit of table
#define UPPER 300  // upper limit
#define STEP 20    // step size

int main(void) {
  static int fahr;
  static float calc;

  for (fahr = LOWER; fahr <= UPPER; fahr = fahr + STEP) {
    calc = (5.0 / 9.0) * (fahr - 32);
    printf("%3d %6.1f\n", fahr, calc);
  }

  return 0;
}
