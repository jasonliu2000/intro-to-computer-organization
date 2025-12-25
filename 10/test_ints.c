#include <stdio.h>
#include "ints.h"

int main(void)
{
    int d1 = return25();
    int d2 = return50();
    int d3 = return75();

    printf("return 25: %d\n", d1);
    printf("return 50: %d\n", d2);
    printf("return 75: %d\n", d3);
}