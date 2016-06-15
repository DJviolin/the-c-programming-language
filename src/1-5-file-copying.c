/////////////////////////////////////////////////////////////
// copy input to output; 1st version
/////////////////////////////////////////////////////////////

#include <stdio.h>

int main(void) {
  int c;

  // c = getchar();      // scanf("%d", &c);
  scanf("%d", &c);
  while (c != EOF) {  // != -> not equal to
    // putchar(c);       // printf("%d", c);
    printf("%d", c);
    // c = getchar();
    scanf("%d", &c);
  }

  return 0;
}
