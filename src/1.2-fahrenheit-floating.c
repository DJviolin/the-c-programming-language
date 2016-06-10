#include <stdio.h>

// print Fahrenheit-Celsius table
// for fahr = 0, 20, ..., 300; floating-point version
int main() {
  float fahr, celsius;
  int lower, upper, step;

  lower = 0;    // lower limit of temperature scale
  upper = 300;  // upper limit
  step = 20;    // step size

  fahr = lower;
  while (fahr <= upper) {
    celsius = (5.0 / 9.0) * (fahr - 32.0);
    // 5.0/9.0 is not truncated
    // because it's the ratio of two floating-point values,
    // integer version would truncate it to zero
    printf("%3.0f %6.1f\n", fahr, celsius);
    // %3.0f - three characters wide, no decimal point and no fraction digits
    // %6.1f - six characters wide, with 1 digit after the decimal point
    fahr = fahr + step;
  }

  return 0;
}
