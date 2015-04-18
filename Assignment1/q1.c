#include<stdio.h>
struct apple
{
    int b;
    char c;
    double d;
    float f;
    long l;

};

union banana
{
    int a;
    char c;
    double d;
};
int main()
{
    int a;
    printf("Size of Integer %d bytes\n", ((int)(&a+1)-(int)&a));

    char b;
    printf("Size of Character %d bytes\n", ((int)(&b+1)-(int)&b));

    float c;
    printf("Size of Float %d bytes\n", ((int)(&c+1)-(int)&c));

    short d;
    printf("Size of Short %d bytes\n", ((int)(&d+1)-(int)&d));

    double e;
    printf("Size of Double %d bytes\n", ((int)(&e+1)-(int)&e));

    long f;
    printf("Size of Long %d bytes\n", ((int)(&f+1)-(int)&f));

    printf("\n\n");

    int* a1[2];
    printf("Size of Integer Pointer %d bytes\n", ((int)&(a1[1])-(int)&(a1[0])));

    char* b1[2];
    printf("Size of Character Pointer %d bytes\n", ((int)&(b1[1])-(int)&(b1[0])));

    float* c1[2];
    printf("Size of Float Pointer %d bytes\n", ((int)&(c1[1])-(int)&(c1[0])));

    short* d1[2];
    printf("Size of Short Pointer %d bytes\n", ((int)&(d1[1])-(int)&(d1[0])));

    double* e1[2];
    printf("Size of Double Pointer %d bytes\n", ((int)&(e1[1])-(int)&(e1[0])));

    long* f1[2];
    printf("Size of Long Pointer %d bytes\n", ((int)&(f1[1])-(int)&(f1[0])));

    printf("\n\n");

    int a2[10];
    printf("Size of Integer Array %d bytes\n",((int)(&a2+1)-(int)&a2));

    char b2[10];
    printf("Size of Character Array %d bytes\n",((int)(&b2+1)-(int)&b2));

    short c2[10];
    printf("Size of Short Array %d bytes\n",((int)(&c2+1)-(int)&c2));

    double d2[10];
    printf("Size of Double Array %d bytes\n",((int)(&d2+1)-(int)&d2));

    float e2[10];
    printf("Size of Float Array %d bytes\n",((int)(&e2+1)-(int)&e2));

    long f2[10];
    printf("Size of Long Array %d bytes\n",((int)(&f2+1)-(int)&f2));

    printf("\n\n");
    struct apple a3[2];
    printf("Size of Structure %d bytes\n",((int)(&a3[1])-(int)&a3[0]));

    printf("\n\n");
    union banana a4[2];
    printf("Size of Union %d bytes\n",((int)(&a4[1])-(int)&a4[0]));

    return 0;
}
