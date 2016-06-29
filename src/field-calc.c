/*
 * Agricultural Field Calculator
 */

#include <stdio.h>

void calc(void) {
  static float width;
  static float height;

  printf("Step 2/1: Enter field's width: ");
  scanf("%f", &width);

  printf("Step 2/2: Enter field's height: ");
  scanf("%f", &height);

  printf("Field width: %f\n", width);
  printf("Field height: %f", height);
}

int main(void) {
  calc();
  return 0;
}
