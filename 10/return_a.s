    .arch   armv8-a
    .text
    .align  2
    .global return_a
    .type   return_a,   %function
return_a:
    mov w0, 'a'          // return "a"
    ret