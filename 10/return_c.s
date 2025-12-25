    .arch   armv8-a
    .text
    .align  2
    .global return_c
    .type   return_c,   %function
return_c:
    mov w0, 'c'          // return "c"
    ret