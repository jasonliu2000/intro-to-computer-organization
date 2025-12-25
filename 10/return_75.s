    .arch   armv8-a
    .text
    .align  2
    .global return75
    .type   return75,   %function
return75:
    mov w0, 75          // return 75
    ret