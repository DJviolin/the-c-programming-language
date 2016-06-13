#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  (void)argc;

  int arg1 = 1;

  arg1 = atoi(argv[1]);

  long a;
  long sum = 0;

  // for loop execution
  for (a = 0; a < arg1; a++) {
    sum += a;
  }

  printf("sum: %ld\n", sum);
  return 0;
}
