/*
 * Agricultural Field Calculator
 */

#include <stdio.h>

void calc(void) {
  static float a, b, perimeter, area;

  printf("Step 1/2: Enter field's width (m): ");
  scanf("%f", &a);

  printf("Step 2/2: Enter field's height (m): ");
  scanf("%f", &b);

  perimeter = (a + b) * 2;
  area = a * b;

  printf("\nWidth: %f m\n", a);
  printf("Height: %f m\n", b);
  printf("Perimeter: %f m\n", perimeter);
  printf("Area: %f m2\n", area);
}

int main(void) {
  setbuf(stdout, NULL);  // http://stackoverflow.com/a/16877432/1442219
  calc();
  return 0;
}
