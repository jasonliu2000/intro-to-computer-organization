**2.1**
a) 4567
b) 89ab
c) fedc
d) 0252

**2.2**
a) 1000 0011 1010 1111
b) 1001 0000 0000 0001
c) 1010 1010 1010 1010
d) 0101 0101 0101 0101

**2.3**
a) 32 bits
b) 48 bits
c) 4 bits
d) 16 bits

**2.4**
a) 2 digits
b) 8 digits
c) 16 digits
d) 3 digits
e) 5 digits
f) 2 digits

**2.5**
For decimal number 29,458,254:
```
r = 10
n = 8
d = 2, 9, 4, 5, 8, 2, 5, 4
```

For hexadecimal number 29458254:
```
r = 2^4
n = 2
d = 2, 9, 4, 5, 8, 2, 5, 4
```

**2.6**
a) 170
```
2^7 + 2^5 + 2^3 + 2^1 = 128 + 32 + 8 + 2 = 170
```

b) 85
```
2^6 + 2^4 + 2^2 + 2^0 = 64 + 16 + 4 + 1 = 85
```

c) 240
```
2^7 + 2^6 + 2^5 + 2^4 = 128 + 64 + 32 + 16 = 240
```

d) 15
```
2^3 + 2^2 + 2^1 + 2^0 = 8 + 4 + 2 + 1 = 15
```

e) `2^7 = 128`

f) 99
```
2^6 + 2^5 + 2^1 + 2^0 = 64 + 32 + 2 + 1 = 99
```

g) 123
```
2^6 + 2^5 + 2^4 + 2^3 + 2^1 + 2^0 = 64 + 32 + 16 + 8 + 2 + 1 = 123
```

h) 255
```
2^7 + 2^6 + 2^5 + 2^4 + 2^3 + 2^2 + 2^1 + 2^0 = 128 + 64 + 32 + 16 + 8 + 4 + 2 + 1 = 255
```

**2.7**
a) 43981
```
2^15 + 2^13 + 2^11 + 2^9 + 2^8 + 2^7 + 2^6 + 2^3 + 2^2 + 2^0
= 32768 + 8192 + 2048 + 512 + 256 + 128 + 64 + 8 + 4 + 1
=  43981
```

**2.8**
a) 40960
```
a000 = 1010 0000 0000 0000 = 2^15 + 2^13 = 32768 + 8192 = 40960
```

**2.9**
a) 64
```
100 = 0b01100100 = 0x64
```

b) 7b
```
123 = 0b01111011 = 0x7b
```

c) 0a
```
10 = 0b00001010 = 0x0a
```

d) 58
```
88 = 0b01011000 = 0x58
```

e) ff
```
255 = 0b11111111 = 0xff
```

f) 10
```
16 = 0b00010000 = 0x10
```

g) 20
```
32 = 0b00100000 = 0x20
```

h) 80
```
128 = 0b10000000 = 0x80
```

**2.10**
a) 0400
```
1024 = 0000 0100 0000 0000 = 0x0400
```

b) 03e8
```
1000 = 0000 0011 1110 1000 = 0x03e8
```

c) 8000
```
32768 = 1000 0000 0000 0000 = 0x8000
```

d) 7fff
```
32767 = 0111 1111 1111 1111 = 0x7fff
```

e) 0100
```
256 = 0000 0001 0000 0000 = 0x0100
```

f) ffff
```
65535 = 1111 1111 1111 1111 = 0xffff
```

g) 1234
```
4660 = 0001 0010 0011 0100 = 0x1234
```

h) abcd
```
43981 = 1010 1011 1100 1101 = 0xabcd
```

**2.11**
A, A-, ..., D-, F are 12 different letter grades that can be represented with 4 bits:
| Letter Grade | Bit Representation |
| --- | --- |
| A | 0001 |
| A- | 0010 |
| B+ | 0011 |
| B | 0100 |
| B- | 0101 |
| C+ | 0110 |
| C | 0111 |
| C- | 1000 |
| D+ | 1001 |
| D | 1010 |
| D- | 1011 |
| F | 1100 |

**2.16**
See `2/hex_to_dec.c`

**2.17**
See `2/dec_to_hex.c`

**2.18**
The program prints -1 instead of 4294967295. This is because `%i` is the conversion specifier for a signed integer.

**2.19**
`an_int` is stored at address `0x7ffffffff19c`. This variable is an integer with hexadecimal value "123f" (`0x0000123f`), with:
- address `0x7ffffffff19c` storing `0x3f`
- address `0x7ffffffff19d` storing `0x12`
- address `0x7ffffffff19e` storing `0x00`
- address `0x7ffffffff19f` storing `0x00`

Note that this integer also takes up 4 bytes on our system, which is standard. Also, this is in little endian order, since this integer is stored in memory from least -> most significant bits.

`a_string` is stored starting at address `0x7ffffffff190`, which each character taking a byte:
- address `0x7ffffffff190` stores `0x31`. This hexadecimal value corresponds to 49 in decimal format. In the ASCII table, 49 is coded as "1"
- address `0x7ffffffff191` stores `0x32`. This hexadecimal value corresponds to 50 in decimal format. In the ASCII table, 50 is coded as "2"
- address `0x7ffffffff192` stores `0x33`. This hexadecimal value corresponds to 51 in decimal format. In the ASCII table, 51 is coded as "3"
- address `0x7ffffffff193` stores `0x66`. This hexadecimal value corresponds to 102 in decimal format. In the ASCII table, 102 is coded as "f"

The remaining 6 bytes from address `0x7ffffffff194` to `0x7ffffffff199` are garbage values yet are part of the string because it was initialized to hold 10 characters.