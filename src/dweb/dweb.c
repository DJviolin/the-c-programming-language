// cd c:/www/clang/the-c-programming-language/src/dweb && clang -std=c11 -Wall
// -g -Wextra -Wformat -Ofast -march=native -ffast-math dweb.c -o dweb.o

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

#include "dwebsvr.h"

void simple_response(struct hitArgs *, char *, char *, http_verb);

int main(int argc, char **argv) {
  if (argc != 2 || !strcmp(argv[1], "-?")) {
    printf("hint: simple [port number]\n");
    exit(0);
  }
  dwebserver(atoi(argv[1]), &simple_response, NULL);
}

void simple_response(struct hitArgs *args, char *path, char *request_body,
                     http_verb type) {
  /*ok_200(args, "\nContent-Type: text/html",
         "<html><head><title>Test Page</title></head>"
         "<body><h1>Testing...</h1>This is a test response.</body>"
         "</html>",
         path);*/
  ok_200(args, "\nContent-Type: text/html", "Hello World!", path);
}
