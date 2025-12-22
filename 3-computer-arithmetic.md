**3.1**
Because there are 10 decimal digits (0-9), it would require a minimum of 4 bits to store one of these digits. We could use the following table to store eight decimal digits in 32 bits:
| decimal digit | bit representation|
| --- | --- |
| 0 | 0000 |
| 1 | 0001 |
| 2 | 0010 |
| 3 | 0011 |
| 4 | 0100 |
| 5 | 0101 |
| 6 | 0110 |
| 7 | 0111 |
| 8 | 1000 |
| 9 | 1001 |

Each decimal digit can be converted into its bit representation and the 8 bit representations can then be concatenated together to store the 8 digit number. For example, the number 12345678 can be represented as `00010010001101000101011001111000`.

This is identical to binary coded decimal (BCD) and here, we can see how it is useful for quick conversions to decimal.

**3.2**
```
let carry = 0
for each i from 0 to n-1:
    sum_i = (x_i + y_i + carry) % 2
    carry = (x_i + y_i) / 2
```

**3.3**
```
let carry = 0
for each i from 0 to n-1:
    sum_i = (x_i + y_i + carry) % 16
    carry = (x_i + y_i) / 16
```
(same as 3.2, but replace references to base 2 with base 16)

**3.4**
```
let borrow = 0
for each i from 0 to n-1:
    if x_i >= y_i: 
        diff_i = x_i - y_i
    else:
        let j = i + 1
        while j < n and x_j == 0:
            j += 1
        
        if j == n:
            borrow = 1
            j -= 1
            x_j += 2
        
        while j > i:
            x_j -= 1
            j -= 1
            x_j += 2

        diff_i = x_i - y_i
```

**3.5**
```
let borrow = 0
for each i from 0 to n-1:
    if x_i >= y_i:
        diff_i = x_i - y_i
    else:
        let j = i + 1
        while j < n and x_j == 0:
            j += 1
        
        if j == n:
            borrow = 1
            j -= 1
            x_j += 16
        
        while j > i:
            x_j -= 1
            j -= 1
            x_j += 16
        
        diff_i = x_i - y_i
```
(same as 3.4, but replace references to base 2 with base 16)

**3.6**
If the integer is positive or equal to 0, convert it to binary.
If the integer is negative, treat it as its positive counterpart, convert it to binary, inverse the bits, and then add 1.

**3.7**
If the first digit is 0, convert the binary to decimal.
If the first digit is 1, inverse the bits, convert the binary to decimal, add 1 then multiply by -1.

**3.8**
a) +4660
```
0x1234 = 0b0001001000110100
= 2^12 + 2^9 2^5 + 2^4 + 2^2
= 4096 + 512 + 32 + 16 + 4
= +4660
```

b) -1
```
0xffff = 0b1111111111111111 = -1
```

c) -32768
```
0x8000 = 0b1000000000000000
= -1 * decimal(0b0111111111111111) - 1
= -1 * 32767 - 1
= -32768
```

d) +32767
```
0x7fff = 0b0111111111111111 = +32767
```

**3.9**
a) 0x0400
```
+1024 = 0b0000010000000000 = 0x0400
```

b) 0xfc00
```
-1024 = inverse(binary(1024)) + 1 
= inverse(0b0000010000000000) + 1
= 0b1111110000000000 
= 0xfc00
```

c) 0xff00
```
-256 = inverse(binary(256)) + 1
= inverse(0b0000000100000000) + 1
= 0b1111111100000000
= 0xff00
```

d) 0x8001
```
-32767 = inverse(binary(32767)) + 1
= inverse(0b0111111111111111) + 1
= 0b1000000000000001
= 0x8001
```

**3.10**
a) Right
b) Right
c) Wrong
d) Wrong
e) Wrong
f) Right

**3.11**
_If the sum has a carry (exceeds number of bits allocated), then the sum is wrong for unsigned values. If the sum has a carry but no penultimate carry, or if the sum has no carry but has a penultimate carry, then this signifies that there was an overflow (addition of two positives leaked into negative territory) and sum would be wrong for signed values._

a) Unsigned: right. Signed: right.
```
55 + aa = 0b01010101 + 0b10101010
= 0b11111111
```
The sum fits in 8 bits and does not have a carry, so this is right. As signed values, there was no carry nor penultimate carry, so this is right.

b) Unsigned: wrong. Signed: right.
```
0x55 + 0xf0 = 0b01010101 + 0b11110000
= 0b101000101
```
The sum (9 bits) exceeds the number of bits allocated to it (8 bits). This results in a carry. As unsigned values, this would be wrong. Because there was a penultimate carry, as signed values, this would be right.

c) Unsigned: right. Signed: right.
```
0x80 + 0x7b = 0b10000000 + 0b01111011
= 0b11111011
```
The sum fits in 8 bits and does not have a carry nor penultimate carry. As unsigned values and signed values, this would be right.

d) Unsigned: right. Signed: wrong.
```
0x63 + 0x7b = 0b01100011 + 0b01111011
= 0b11011110
```
THe sum fits in 8 bits so it does not have a carry, but it does have a penultimate carry. Thus, as unsigned values, this would be right. As signed values, this would be wrong.

e) Unsigned: wrong. Signed: right.
```
0x0f + 0xff = 0b00001111 + 0b11111111
= 0b100001110
```
The sum (9 bits) exceeds the number of bits allocated to it (8 bits). This results in a carry, and there was also a penultimate carry. As unsigned values, this would be wrong; as signed values, this would be right.

f) Unsigned: wrong. Signed: wrong.
```
0x80 + 0x80 = 0b10000000 + 0b10000000
= 0b100000000
```
The sum (9 bits) exceeds the number of bits allocated to it (8 bits). This results in a carry, although there was no penultimate carry. As unsigned values and signed values, this would be wrong.

**3.12**
a) Unsigned: wrong. Signed: right.
```
0x1234 + 0xedcc = 0x0000 (with a carry)
```
Because there is a carry (sum exceeds 16 bits), for unsigned values, this would be wrong. Because there would be a carry into the addition of the high-order bits 0x1 and 0xe, doing the math out would show that there's a penultimate carry. For signed values, this would be right.

b) Unsigned: wrong. Signed: right.
```
0x1234 + 0xfedc = 0x1110 (with a carry)
```
Because there is a carry, this would be wrong for unsigned values. No overflow happens where the sum of the two numbers crosses the positive-negative border; this would be right for signed values.

c) Unsigned: wrong. Signed: wrong.
```
0x8000 + 0x8000 = 0x0000 (with a carry)
```
Because there is a carry, this would be wrong for unsigned values. Both numbers are negative, yet the high-order bit for the sum in the allocated 16 bits is 0, which implies that the sum is positive; this would be wrong for signed values.

d) Unsigned: wrong. Signed: right. 
```
0x0400 + 0xffff = 0x03ff (with a carry)
```
Because there is a carry, this would be wrong for unsigned values. There is a penultimate carry if you do the math out, which would mean that this would be right for signed values. But another way to see that this is true is realizing that `0xffff = 1`, and `0x0400 > 1`, so the sum should be positive; we see that `0x03ff` does apppear to be positive.

e) Unsigned: right. Signed: right.
```
0x07d0 + 0x782f = 0x7fff
```
Because there is no carry, this would be right for unsigned values. Because both numbers are positive and the sum is positive, there is no overflow; this would be right for signed values too.

f) Unsigned: wrong. Signed: wrong.
```
0x8000 + 0xffff = 0x7fff (with a carry)
```
Because there is a carry, this would be wrong for unsigned values. It is easy to quickly see that there is no penultimate carry, which would mean that this is wrong for signed values. But another way to see that this is the case is that both numbers are negative so that the sum should be negative too, yet the result has a high-order bit of 0, implying that it is positive.