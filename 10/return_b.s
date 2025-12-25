    .arch   armv8-a
    .text
    .align  2
    .global return_b
    .type   return_b,   %function
return_b:
    mov w0, 'b'          // return "b"
    ret