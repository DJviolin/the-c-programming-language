# cd /c/www/clang/the-c-programming-language && make clean build assembly && time ./bin/1.1-hello

CC := clang
CFLAGS := -std=c11
BINARY := -Wall -Wextra -g
ASSEMBLY := -S -fverbose-asm -masm=intel
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
	$(CC) $(CFLAGS) $(BINARY) $(OPTIMIZE) $^ -o $@

assembly: $(ASS)
$(ASS): ass/%: src/%.c
	$(CC) $(CFLAGS) $(ASSEMBLY) $(OPTIMIZE) $^ -o $@
