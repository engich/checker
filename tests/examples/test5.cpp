// тестирование sizeof от указателя

#include <cstdio>
#include <stdlib.h>
#include <cstring>
#include <cassert>

int test_3(int x) {
    int intArray[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    int *intPointer = intArray;

    return *(intPointer + (i * sizeof(int)));
}

int test_4(int x) {
    int intArray[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    int *intPointer = intArray;

    return *(intPointer + i)
}

void test_5() {
    int *p;
    size_t N = 5;
    p = p + sizeof(int) * N;
}

void test_6() {
    int *p;
    size_t N = 5;
    p = p + N;
}

int main(int argc, char **argv) {

}
