.data
printf_format:
  .string "%d"

n:
  .long 0

k:
  .long 0


.text
.globl main

main:

  movl $n, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call __isoc99_scanf

  movl $k, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call __isoc99_scanf


  /* Простите, но я говнокодер */
  movl n, %eax
  xor k, %eax
  movl %eax, n


  movl n, %eax
  and $0b000010000000000000000000000000000000, %eax
  cmpl $0, %eax
  je e32
  movl $32, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e32:

  movl n, %eax
  and $0b000001000000000000000000000000000000, %eax
  cmpl $0, %eax
  je e31
  movl $31, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e31:

  movl n, %eax
  and $0b000000100000000000000000000000000000, %eax
  cmpl $0, %eax
  je e30
  movl $30, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e30:

  movl n, %eax
  and $0b000000010000000000000000000000000000, %eax
  cmpl $0, %eax
  je e29
  movl $29, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e29:

  movl n, %eax
  and $0b000000001000000000000000000000000000, %eax
  cmpl $0, %eax
  je e28
  movl $28, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e28:

  movl n, %eax
  and $0b000000000100000000000000000000000000, %eax
  cmpl $0, %eax
  je e27
  movl $27, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e27:

  movl n, %eax
  and $0b000000000010000000000000000000000000, %eax
  cmpl $0, %eax
  je e26
  movl $27, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e26:

  movl n, %eax
  and $0b000000000001000000000000000000000000, %eax
  cmpl $0, %eax
  je e25
  movl $25, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e25:

  movl n, %eax
  and $0b000000000000100000000000000000000000, %eax
  cmpl $0, %eax
  je e24
  movl $24, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e24:

  movl n, %eax
  and $0b000000000000010000000000000000000000, %eax
  cmpl $0, %eax
  je e23
  movl $23, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e23:

  movl n, %eax
  and $0b000000000000001000000000000000000000, %eax
  cmpl $0, %eax
  je e22
  movl $22, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e22:

  movl n, %eax
  and $0b000000000000000100000000000000000000, %eax
  cmpl $0, %eax
  je e21
  movl $21, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e21:

  movl n, %eax
  and $0b000000000000000010000000000000000000, %eax
  cmpl $0, %eax
  je e20
  movl $20, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e20:

  movl n, %eax
  and $0b000000000000000001000000000000000000, %eax
  cmpl $19, %eax
  je e19
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e19:

  movl n, %eax
  and $0b000000000000000000100000000000000000, %eax
  cmpl $18, %eax
  je e18
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e18:

  movl n, %eax
  and $0b000000000000000000010000000000000000, %eax
  cmpl $0, %eax
  je e17
  movl $17, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e17:

  movl n, %eax
  and $0b000000000000000000001000000000000000, %eax
  cmpl $0, %eax
  je e16
  movl $16, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e16:

  movl n, %eax
  and $0b000000000000000000000100000000000000, %eax
  cmpl $0, %eax
  je e15
  movl $15, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e15:

  movl n, %eax
  and $0b000000000000000000000010000000000000, %eax
  cmpl $0, %eax
  je e14
  movl $14, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e14:

  movl n, %eax
  and $0b000000000000000000000001000000000000, %eax
  cmpl $0, %eax
  je e13
  movl $13, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e13:

  movl n, %eax
  and $0b000000000000000000000000100000000000, %eax
  cmpl $0, %eax
  je e12
  movl $12, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e12:

  movl n, %eax
  and $0b000000000000000000000000010000000000, %eax
  cmpl $0, %eax
  je e11
  movl $11, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e11:

  movl n, %eax
  and $0b000000000000000000000000001000000000, %eax
  cmpl $0, %eax
  je e10
  movl $10, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e10:

  movl n, %eax
  and $0b000000000000000000000000000100000000, %eax
  cmpl $0, %eax
  je e9
  movl $9, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e9:

  movl n, %eax
  and $0b000000000000000000000000000010000000, %eax
  cmpl $0, %eax
  je e8
  movl $8, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e8:

  movl n, %eax
  and $0b000000000000000000000000000001000000, %eax
  cmpl $0, %eax
  je e7
  movl $7, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e7:

  movl n, %eax
  and $0b000000000000000000000000000000100000, %eax
  cmpl $0, %eax
  je e6
  movl $6, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e6:

  movl n, %eax
  and $0b000000000000000000000000000000010000, %eax
  cmpl $0, %eax
  je e5
  movl $5, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e5:

  movl n, %eax
  and $0b000000000000000000000000000000001000, %eax
  cmpl $0, %eax
  je e4
  movl $4, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e4:

  movl n, %eax
  and $0b000000000000000000000000000000000100, %eax
  cmpl $0, %eax
  je e3
  movl $3, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e3:

  movl n, %eax
  and $0b000000000000000000000000000000000010, %eax
  cmpl $0, %eax
  je e2
  movl $2, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e2:


  movl n, %eax
  and $0b000000000000000000000000000000000001, %eax
  cmpl $0, %eax
  je e1
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e1:

movl  $0, %eax
ret
