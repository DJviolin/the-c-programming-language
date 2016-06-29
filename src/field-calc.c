/*
 * Agricultural Field Calculator
 */

#include <stdio.h>

void calc(void) {
  static float width;
  static float height;

  printf("Step 1/2: Enter field's width: ");
  scanf("%f", &width);

  printf("Step 2/2: Enter field's height: ");
  scanf("%f", &height);

  printf("Field width: %f\n", width);
  printf("Field height: %f", height);
}

int main(void) {
  setbuf(stdout, NULL);  // http://stackoverflow.com/a/16877432/1442219
  calc();
  return 0;
}
