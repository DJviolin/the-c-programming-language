/////////////////////////////////////////////////////////////
// Prints ascii characters with numbers
/////////////////////////////////////////////////////////////

#include <stdio.h>

int main(void) {
  static int ch;

  for (ch = 0; ch <= 255; ch++) {
    printf("ASCII value = %d, Character = %c\n", ch, ch);
  }

  return 0;
}
