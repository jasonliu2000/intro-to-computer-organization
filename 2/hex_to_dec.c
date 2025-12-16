#include <stdio.h>

int main(void)
{
    int val;

    printf("Enter a hexadecimal number: ");
    scanf("%x", &val);

    printf("0x%x = %d\n", val, val);
}