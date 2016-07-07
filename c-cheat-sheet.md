## C Cheat Sheet for personal learning paths

##### C11 Standard

[http://www.open-std.org/JTC1/SC22/WG14/](http://www.open-std.org/JTC1/SC22/WG14/)

[http://www.open-std.org/JTC1/SC22/WG14/www/standards.html#9899](http://www.open-std.org/JTC1/SC22/WG14/www/standards.html#9899)

[http://www.open-std.org/JTC1/SC22/WG14/www/docs/n1570.pdf](http://www.open-std.org/JTC1/SC22/WG14/www/docs/n1570.pdf)

##### C11 Standard Library Reference

[http://www.tutorialspoint.com/c_standard_library/](http://www.tutorialspoint.com/c_standard_library/)

[http://www.cplusplus.com/reference/clibrary/](http://www.cplusplus.com/reference/clibrary/)

[http://code-reference.com/c](http://code-reference.com/c)

***

##### Useful links

[SlideShare - Deep C](http://www.slideshare.net/olvemaudal/deep-c/)

[Compiler Explorer](http://gcc.godbolt.org/#compilers:!((compiler:clang380,options:%27-xc+-std%3Dgnu11+-Wall+-Wextra+-fverbose-asm+-O3+-march%3Dhaswell%27,source:%27%23include+%3Cstdio.h%3E%0A%0Avoid+foo(void)+%7B%0A++int+fahr%3B%0A++float+calc%3B%0A%0A++for+(fahr+%3D+300%3B+fahr+%3E%3D+0%3B+fahr+%3D+fahr+-+20)+%7B%0A++++calc+%3D+(5.0+/+9.0)+*+(fahr+-+32)%3B%0A++++printf(%22%253d+%256.1f%5Cn%22,+fahr,+calc)%3B%0A++%7D%0A%7D%0A%0Aint+main(void)+%7B%0A++foo()%3B%0A++return+0%3B%0A%7D%27)),filterAsm:(commentOnly:!t,directives:!t,labels:!t),version:3)

##### Code Block CPU Execution Time Benchmark

[StackOverflow - rdtsc & rdtscp #1](http://stackoverflow.com/questions/12631856/difference-between-rdtscp-rdtsc-memory-and-cpuid-rdtsc)

[StackOverflow - rdtsc & rdtscp #2](http://stackoverflow.com/questions/27693145/rdtscp-versus-rdtsc-cpuid)

***

##### C11 valid `main()` function declaration

[SlideShare - Deep C](http://www.slideshare.net/olvemaudal/deep-c)

[StackOverflow - What are the valid signatures for C's main() function? [duplicate]](http://stackoverflow.com/a/2108208/1442219)

[StackOverflow - Standard way to define parameter-less function main() in C](http://stackoverflow.com/a/8022395/1442219)

[StackOverflow - Must declare function prototype in C? [duplicate]](http://stackoverflow.com/a/2575186/1442219)

[StackOverflow - Declare main prototype](http://stackoverflow.com/a/5020691/1442219)

[C11 Standard - 5.1.2.2.1 Program startup - Page 31](http://www.open-std.org/JTC1/SC22/WG14/www/docs/n1570.pdf)

##### Standard Way of function declarations

Main function: `int main(void) {}`

Other functions: `int f()` becomes `int f(void)`

***

##### C Variable Declaration

[StackOverflow - Initializing variables in C](http://stackoverflow.com/a/7975099/1442219)

[StackOverflow - Deoptimizing a program for the pipeline in Intel Sandybridge-family CPUs](http://stackoverflow.com/a/37362225/1442219)

[SlideShare - Deep C](http://www.slideshare.net/olvemaudal/deep-c/)

When the variable is declared inside a function it is not initialised, and when it is declared in static or global scope it's set to 0:

```c
int a; // is set to 0
void foo() {
  int b;  // set to whatever happens to be in memory there
}
```

The cost of setting auto variables to 0 would increase the cost of function calls. Memsetting the global data segment to 0 however, is a one time cost, that happens at startup. -> Garbage value -> Compiler translating it to 0 in Debug Mode, just like when it's `static int 0;`:

```c
int a; // undefined
```

Standard variables are initialized to 0:

```c
static int a; // 0
```

Private vs Public Variables:

```c
```

***

##### input & output

```c
printf();   // Writes output
putchar();  // Writes output
scanf();    // reads input
getchar();  // reads input
```

***

##### int & float

- integer numbers truncate `(5 / 9 = 0.55 -> 0. -> 0)`!
- floating-point numbers NOT truncate -> Mathematical orders in arithmetic ALWAYS work!

***

##### Escape Sequences - Complete set

```c
\a    // alert (bell) character
\b    // backspace
\f    // formfeed
\n    // newline
\r    // carriage return
\t    // horizontal tab
\v    // vertical tab
\\    // backslash
\?    // question mark
\’    // single quote
\"    // double quote
\ooo  // octal number
\xhh  // hexadecimal number
```

##### Defining Escape Sequences

```c
#define VTAB ’\013’  // ASCII vertical tab
#define BELL ’\007’  // ASCII bell character
#define VTAB ’\xb’   // ASCII vertical tab - hexadecimal
#define BELL ’\x7’   // ASCII bell character - hexadecimal
```

***

##### C Data Types

```c
int     // integer -> e.g. 4
float   // floating point -> numbers that may have fractional part e.g. 3.234
char    // character -> a single byte
short   // short integer
long    // long integer
double  // double-precision floating point
```

***

##### Output Formatting

```c
%d     // print as decimal integer
%6d    // print as decimal integer, at least 6 characters wide
%f     // print as floating point
%6f    // print as floating point, at least 6 characters wide
%.2f   // print as floating point, 2 characters after decimal point
%6.2f  // print as floating point, at least 6 wide and 2 after decimal point
```

- Among others, `printf()` also recognizes `%o` for octal, `%x` for hexadecimal, `%c` for character, `%s` for character string, and `%%` for % itself.

***

##### Symbolic constants

A #define line defines a symbolic name or symbolic constant to be a particular string of characters:

```c
#define   NAME   replacement_text
```

- any occurrence of name (not in quotes and not part of another name) will be replaced by the corresponding replacement text
- The name has the same form as a variable name: a sequence of letters and digits that begins with a letter
- The replacement text can be any sequence of characters; it is not limited to numbers
- The quantities of NAME are symbolic constants, not variables, so they do not appear in declarations

***

##### 1.5 Character Input and Output

```c
c = getchar();
```

- Each time it is called, getchar reads the next input character from a text stream and returns that as its value
- Variable `c` contains the next character of input
- The characters normally come from the keyboard

```c
putchar(c);
```

- The function putchar prints a character each time it is called, prints the contents of the integer variable c as a character, usually on the screen
- Calls to putchar and printf may be interleaved; the output will appear in the order in which the calls are made

***

##### 1.5.1 File Copying

Given getchar and putchar, you can write a surprising amount of useful code without knowing anything more about input and output. The simplest
example is a program that copies its input to its output one character at a time:

```c
read a character
while (character is not end-of-file indicator)
  output the character just read
  read a character
```

```c
c = getchar();  // scanf("%d", &c);
putchar(c);     // printf("%d", c);
```
