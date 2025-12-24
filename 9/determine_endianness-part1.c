#include <stdio.h>

int main(void)
{
    unsigned int i = 1;
    char *c = (char *)&i;
    if (*c == 1) {
        printf("System is big-endian\n");
    } else {
        printf("System is little-endian\n");
    }
}