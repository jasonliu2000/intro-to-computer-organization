#include <stdio.h>

int main(void)
{
    int val;

    printf("Enter a decimal number: ");
    scanf("%d", &val);

    printf("%d = 0x%x\n", val, val);
}