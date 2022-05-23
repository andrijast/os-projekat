
#include "../lib/console.h"
#include "../lib/hw.h"

void print(const char * str) {
    for (int i = 0; str[i] != '\0'; i++) {
        __putc(str[i]);
    }
}

void println(const char * str) {
    print(str);
    __putc('\n');
}

void printint(int a) {
    if (a < 10) {
        __putc(a % 10 + '0');
        return;
    }

    printint(a / 10);
    __putc(a % 10 + '0');
}

/*
void printfloat(float x, int precision) {
    if (x == 0) {
        __putc('0');
        __putc('.');
        __putc('0');
        return;
    }
    if (x < 0) {
        __putc('-');
        x = -x;
    }
    printint((int)x);
    __putc('.');
    x -= (int) x;
    while (precision-- && x != (int) x) {
        x *= 10;
    }
    printint((int) x);
}
 */
