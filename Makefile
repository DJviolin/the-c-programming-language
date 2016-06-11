# cd /c/www/clang/the-c-programming-language && make clean build assembly && time ./bin/1.1-hello

CC := clang -std=c11
GCC := gcc -std=c11
CFLAGS := -Wall -g
ASSEMBLY := -Wall -S -masm=intel
# Optimization flags: http://stackoverflow.com/a/15548189/1442219 | https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html
# http://www.phoronix.com/scan.php?page=article&item=clang-gcc-opts&num=2 | http://openbenchmarking.org/result/1602297-GA-SKYLAKEXE76
#OPTIMIZE := -O3
#OPTIMIZE := -Ofast -march=native
OPTIMIZE := -O3 -march=native

SRC := $(wildcard src/*.c)
BIN := $(patsubst src/%.c,bin/%,$(SRC))
ASS := $(patsubst src/%.c,ass/%,$(SRC))

clean:
	rm -f bin/* ass/*

build: $(BIN)
$(BIN): bin/%: src/%.c
	$(CC) $(CFLAGS) $(OPTIMIZE) $^ -o $@

assembly: $(ASS)
$(ASS): ass/%: src/%.c
	$(CC) $(ASSEMBLY) $(OPTIMIZE) $^ -o $@
