/////////////////////////////////////////////////////////////
// Print Fahrenheit-Celsius table
// From 300 to 0
/////////////////////////////////////////////////////////////

#include <stdio.h>

// int a;  // 0 -> because "linker visibility"
// variable is accessible from other compilation units

void foo(void) {
  // Only true when debug mode is on at compiling
  // int fahr;    // undefined -> garbage value in theory -> in practice: 0
  // float calc;  // undefined -> garbage value in theory -> in practice: 0.0

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
