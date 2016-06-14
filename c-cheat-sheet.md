## C Cheat Sheet for personal learning paths

##### C11 Standard

[http://www.open-std.org/JTC1/SC22/WG14/](http://www.open-std.org/JTC1/SC22/WG14/)

[http://www.open-std.org/JTC1/SC22/WG14/www/standards.html#9899](http://www.open-std.org/JTC1/SC22/WG14/www/standards.html#9899)

[http://www.open-std.org/JTC1/SC22/WG14/www/docs/n1570.pdf](http://www.open-std.org/JTC1/SC22/WG14/www/docs/n1570.pdf)

***

##### Useful links

[SlideShare - Deep C](http://www.slideshare.net/olvemaudal/deep-c/)

[Compiler Explorer](http://gcc.godbolt.org/#compilers:!((compiler:clang380,options:%27-xc+-std%3Dgnu11+-Wall+-Wextra+-fverbose-asm+-O3+-march%3Dhaswell%27,source:%27%23include+%3Cstdio.h%3E%0A%0Avoid+foo(void)+%7B%0A++int+fahr%3B%0A++float+calc%3B%0A%0A++for+(fahr+%3D+300%3B+fahr+%3E%3D+0%3B+fahr+%3D+fahr+-+20)+%7B%0A++++calc+%3D+(5.0+/+9.0)+*+(fahr+-+32)%3B%0A++++printf(%22%253d+%256.1f%5Cn%22,+fahr,+calc)%3B%0A++%7D%0A%7D%0A%0Aint+main(void)+%7B%0A++foo()%3B%0A++return+0%3B%0A%7D%27)),filterAsm:(commentOnly:!t,directives:!t,labels:!t),version:3)

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

###### input & output

```c
printf() // Writes output
scanf()  // reads input
```

***