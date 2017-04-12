CC := clang
CFLAGS := -std=c11
BINARY := -g -Weverything -Werror
ASSEMBLY := -S -masm=intel
OPTIMIZE := -Ofast -march=native -ffast-math

SRC := $(wildcard src/*.c)
BIN := $(patsubst src/%.c,bin/%,$(SRC))
ASM := $(patsubst src/%.c,asm/%,$(SRC))

all: clean build asm

clean:
	mkdir -p ./bin ./ass
	rm -f bin/* ass/*

build: $(BIN)
$(BIN): bin/%: src/%.c
	$(CC) $(CFLAGS) $(BINARY) $(OPTIMIZE) $^ -o $@

asm: $(ASS)
$(ASS): asm/%: src/%.c
	$(CC) $(CFLAGS) $(ASSEMBLY) $(OPTIMIZE) $^ -o $@.s
