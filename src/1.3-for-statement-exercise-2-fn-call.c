/////////////////////////////////////////////////////////////
// Print Fahrenheit-Celsius table
// From 300 to 0
/////////////////////////////////////////////////////////////

#include <stdio.h>

void foo(void) {
  // int fahr;    // undefined
  // float calc;  // undefined
  static int fahr;    // 0
  static float calc;  // 0.0

  for (fahr = 300; fahr >= 0; fahr = fahr - 20) {
    calc = (5.0 / 9.0) * (fahr - 32);
    printf("%3d %6.1f\n", fahr, calc);
  }
}

int main(void) {
  foo();
  return 0;
}
