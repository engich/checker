// тестирование sizeof от указателя

#include <cstdio>
#include <stdlib.h>
#include <cstring>
#include <cassert>

int test_0(int *x) {
    int *p = x;
    char *second_char = (char*)(p + 1);
}

void test_2(int *x) {
    int *p = x;
    int *second_char = (char*)(p) + 1;
}

void test_3(int *x) {
    int *p = s;
    int *c = (char*)p;
}

int main(int argc, char **argv) {

}
