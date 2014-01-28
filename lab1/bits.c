/* 
 * CS:APP Data Lab 
 * 
 * NAME: Zhengxiong Zhang    USERID: zhengxiz    Version9: 6/3/2013
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
/*
 * Exploit ability of ~ and | to compute &: 
 * ~(~x | ~y) equals x & y
 */
  return ~(~x | ~y);
}
/* 
 * copyLSB - set all bits of result to least significant bit of x
 *   Example: copyLSB(5) = 0xFFFFFFFF, copyLSB(6) = 0x00000000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int copyLSB(int x) {
/*
 * Using >> and << set all bits of result to least significant bit of x: 
 * x << 31 is the least significant bit of x leading 31 zeros, then use the 
 * arithmetic shift (>> 31) set all bits to the least significant bit of x.
 */
  return (x << 31) >> 31;

}
/* 
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2 
 */
int leastBitPos(int x) {
/*
 * Using ~, + and & return a mask that marks the position of the least 
 * significant 1 bit. 
 * For example, a = 01100100
 *           (~a) = 10011011
 *       (~a + 1) = 10011100
 *   (~a + 1) & a = 00000100
 * Clearly, (~a + 1) and a have the same bit value in the least 
 * significant 1 bit and following zeros.
 */
  return (~x + 1) & x;
}
/* 
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3 
 */
int logicalShift(int x, int n) {
/* 
 * This is a way to do the logicalShift for int variable: 
 * The most important thing is to generate the mask variable, which
 * has n zeros leading (32 - n) ones, and then & (x >> n), we can 
 * have the right result.
 * Generate the mask: ((1 << 31) >> n) << 1.
 */
  int mask;
  x >>= n;
  mask = (1 << 31);
  mask >>= n;
  mask <<= 1;
  mask = ~mask;
  return x & mask;
}
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
/* Count the bits
 * another way (ops: 28): 
 * int mask;
 * int result = x;
 * mask = 0x55;
 * mask |= (mask << 8);
 * mask |= (mask << 16);
 * result = (result & mask) + ((result >> 1) & mask);
 * mask = 0x33;
 * mask |= (mask << 8);
 * mask |= (mask << 16);
 * result = (result & mask) + ((result >> 2) & mask);
 * mask = 0x0F;
 * mask |= (mask << 8);
 * mask |= (mask << 16);
 * result = result + (result >> 4);
 * result &= mask;
 * result = result + (result >> 8);
 * result = result + (result >> 16);
 * return (result & 0xFF);
 */
  int mask;
  int result;
  mask = 0x11;
  mask |= (mask << 8);
  mask |= (mask << 16);
  result = x & mask;
  result += ((x >> 1) & mask);
  result += ((x >> 2) & mask);
  result += ((x >> 3) & mask);
  result += (result >> 16);
  mask = 0x0F | (0x0F << 8);
  result = (result & mask) + ((result >> 4) & mask);
  result += (result >> 8);
  result = result & 0xFF;
  return result;
}
/* 
 * TMax - return maximum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmax(void) {
/* return the maximum integer */
  int result = 1;
  result <<= 31;
  result = ~result;
  return result;
}
/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n) {
/* 
 * Compute x/(2^n), the carry is the most difficult. 
 * The flag is (sign << n) ^ sign.
 */
  int sign;
  int flag;
  sign = (x >> 31);
  flag = (sign << n) ^ sign;
  return ((x + flag) >> n);
}
/* 
 * isNonNegative - return 1 if x >= 0, return 0 otherwise 
 *   Example: isNonNegative(-1) = 0.  isNonNegative(0) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 3
 */
int isNonNegative(int x) {
/*
 * if x <= 0, return 1, return 0 otherwise.
 */
  return !(x >> 31);
}
/* 
 * isGreater - if x > y  then return 1, else return 0 
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y) {
/*
 * another way (ops: 11): 
 * int signx;
 * int signy;
 * int result;
 * int signr;
 * signx = x >> 31;
 * signy = y >> 31;
 * result = x + (~y); //result = x - y - 1
 * signr = result >> 31;
 * return !((signx | (~signy)) & ((signx ^ signy) | signr));
 */
  int ny;
  int z;
  ny = ~y;
  z = x + ny; //z = x - y - 1
  return !(((x | ny) & ((x ^ y) | z)) >> 31);
}
/* 
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   You may assume -TMax <= x <= TMax
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 4
 */
int absVal(int x) {
/* return absolute value of x */
  int sign;
  sign = (x >> 31);
  return ((x + sign) ^ sign);
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5) = 0, isPower2(8) = 1, isPower2(0) = 0
 *   Note that no negative number is a power of 2.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int isPower2(int x) {
/* if x is a power of 2, return 1 */
  int temp;
  temp = (x << 1);
  return (!(x & (x + (~0))) ^ !temp);
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
/* return bit-level float */
  unsigned signexponent = 0x4F800000;
  unsigned absx = x;
  unsigned temp;
  unsigned fraction;
  if (x) {
    if (x < 0) {
      signexponent = 0xCF800000;
      absx = -x;
    }
    while (1) {
      temp = absx;
      absx <<= 1;
      signexponent -= 0x00800000;
      if (temp & 0x80000000)
        break;
    }
    fraction = absx >> 9;
    if (absx & 0x100)
      if (absx & 0x2FF)
        fraction++;
    return (signexponent + fraction);
  }
  else
    return x;
}
/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_abs(unsigned uf) {
/* return absolute value of uf */
  unsigned result;
  result = 0x7FFFFFFF & uf;
  if (result > 0x7F800000)
    return uf;
  return result;
}
