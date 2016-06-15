/////////////////////////////////////////////////////////////
// copy input to output; 1st version
/////////////////////////////////////////////////////////////

#include <stdio.h>

int main(void) {
  static int c;

  c = getchar();
  while (c != EOF) {  // != -> not equal to
    putchar(c);
    c = getchar();
  }

  return 0;
}
