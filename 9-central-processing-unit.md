**9.1**
The compiler did not allow this change because of our attempt to fetch the address of `total_inches`. This causes a compile error because the variable will be stored in a CPU register and will not have a memory address.

**9.2**
See `9/determine_endianness-part1.c`.

**9.3**
See `9/determine_endianness-part2.c`.
