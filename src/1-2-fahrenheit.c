#include <stdio.h>

// print Fahrenheit-Celsius table
// for fahr = 0, 20, ..., 300
int main(void) {
  // in C, all variables must be declared before they are used,
  // usually at the beginning of the function
  int fahr, celsius;
  int lower, upper, step;

  // assignment statements
  // Which sets the variables to their initial values
  lower = 0;    // lower limit of temperature scale
  upper = 300;  // upper limit
  step = 20;    // step size

  // a loop that repeats once per output line
  // fahr is less than or equal to upper, than executed
  // when the test becomes false (fahr exceeds upper) the loop ends,
  // and execution continues at the statement that follows the loop
  fahr = lower;
  while (fahr <= upper) {
    // integer division truncates, any fractional part is discarded
    celsius = 5 * (fahr - 32) / 9;
    // printf("%d\t%d\n", fahr, celsius); // %d specifies an integer argument,
    // they must match up properly by number and type,
    // or you will get wrong answers
    printf("%3d\t%6d\n", fahr, celsius);  // numbers justified right
    // first number of each line in a field three digits wide,
    // and the second in a field six digits wide
    fahr = fahr + step;
  }

  return 0;
}
