    .arch   armv8-a
    .text
    .align  2
    .global return25
    .type   return25,   %function
return25:
    mov w0, 25          // return 25
    ret