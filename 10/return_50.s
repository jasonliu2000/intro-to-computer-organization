    .arch   armv8-a
    .text
    .align  2
    .global return50
    .type   return50,   %function
return50:
    mov w0, 50          // return 50
    ret