# cd /c/www/clang/the-c-programming-language && make clean build assembly && time ./bin/1.1-hello

CC := clang -std=c11
CFLAGS := -Wall -g
ASSEMBLY := -S -masm=intel
# Optimization flags: http://stackoverflow.com/a/15548189/1442219
OPTIMIZE := -Ofast

#TARGETS := bin/1.1-hello bin/1.2-fahrenheit bin/1.2-fahrenheit-floating
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

#clean:
#	rm -f \
#	$(FOLDER_BIN)1.1-hello $(FOLDER_ASSEMBLY)1.1-hello \
#	$(FOLDER_BIN)1.2-fahrenheit $(FOLDER_ASSEMBLY)1.2-fahrenheit \
#	$(FOLDER_BIN)1.2-fahrenheit-floating $(FOLDER_ASSEMBLY)1.2-fahrenheit-floating

#build:
#	$(CC) $(CFLAGS) $(OPTIMIZE) $(FOLDER_SRC)1.1-hello.c -o $(FOLDER_BIN)1.1-hello
#	$(CC) $(CFLAGS) $(OPTIMIZE) $(FOLDER_SRC)1.2-fahrenheit.c -o $(FOLDER_BIN)1.2-fahrenheit
#	$(CC) $(CFLAGS) $(OPTIMIZE) $(FOLDER_SRC)1.2-fahrenheit-floating.c -o $(FOLDER_BIN)1.2-fahrenheit-floating

#assembly:
#	$(CC) $(ASSEMBLY) $(OPTIMIZE) $(FOLDER_SRC)1.1-hello.c -o $(FOLDER_ASSEMBLY)1.1-hello
#	$(CC) $(ASSEMBLY) $(OPTIMIZE) $(FOLDER_SRC)1.2-fahrenheit.c -o $(FOLDER_ASSEMBLY)1.2-fahrenheit
#	$(CC) $(ASSEMBLY) $(OPTIMIZE) $(FOLDER_SRC)1.2-fahrenheit-floating.c -o $(FOLDER_ASSEMBLY)1.2-fahrenheit-floating
