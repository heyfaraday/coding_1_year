.data
printf_format:
  .string "%d"

n:
  .long 0


.text
.globl main

main:

  movl $n, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call __isoc99_scanf

  /* Простите, но я говнокодер */

  movl n, %eax
  and $0b000010000000000000000000000000000000, %eax
  cmpl $0, %eax
  je e32
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e32:


  movl n, %eax
  and $0b000001000000000000000000000000000000, %eax
  cmpl $0, %eax
  je e31
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e31:

  movl n, %eax
  and $0b000000100000000000000000000000000000, %eax
  cmpl $0, %eax
  je e30
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e30:


  movl n, %eax
  and $0b000000010000000000000000000000000000, %eax
  cmpl $0, %eax
  je e29
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e29:

  movl n, %eax
  and $0b000000001000000000000000000000000000, %eax
  cmpl $0, %eax
  je e28
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e28:

  movl n, %eax
  and $0b000000000100000000000000000000000000, %eax
  cmpl $0, %eax
  je e27
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e27:

  movl n, %eax
  and $0b000000000010000000000000000000000000, %eax
  cmpl $0, %eax
  je e26
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e26:


  movl n, %eax
  and $0b000000000001000000000000000000000000, %eax
  cmpl $0, %eax
  je e25
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e25:

  movl n, %eax
  and $0b000000000000100000000000000000000000, %eax
  cmpl $0, %eax
  je e24
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e24:

  movl n, %eax
  and $0b000000000000010000000000000000000000, %eax
  cmpl $0, %eax
  je e23
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e23:

  movl n, %eax
  and $0b000000000000001000000000000000000000, %eax
  cmpl $0, %eax
  je e22
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e22:


  movl n, %eax
  and $0b000000000000000100000000000000000000, %eax
  cmpl $0, %eax
  je e21
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e21:

  movl n, %eax
  and $0b000000000000000010000000000000000000, %eax
  cmpl $0, %eax
  je e20
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e20:

  movl n, %eax
  and $0b000000000000000001000000000000000000, %eax
  cmpl $0, %eax
  je e19
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e19:

  movl n, %eax
  and $0b000000000000000000100000000000000000, %eax
  cmpl $0, %eax
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
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e17:

  movl n, %eax
  and $0b000000000000000000001000000000000000, %eax
  cmpl $0, %eax
  je e16
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e16:

  movl n, %eax
  and $0b000000000000000000000100000000000000, %eax
  cmpl $0, %eax
  je e15
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e15:


  movl n, %eax
  and $0b000000000000000000000010000000000000, %eax
  cmpl $0, %eax
  je e14
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e14:

  movl n, %eax
  and $0b000000000000000000000001000000000000, %eax
  cmpl $0, %eax
  je e13
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e13:

  movl n, %eax
  and $0b000000000000000000000000100000000000, %eax
  cmpl $0, %eax
  je e12
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e12:

  movl n, %eax
  and $0b000000000000000000000000010000000000, %eax
  cmpl $0, %eax
  je e11
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e11:

  movl n, %eax
  and $0b000000000000000000000000001000000000, %eax
  cmpl $0, %eax
  je e10
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e10:

  movl n, %eax
  and $0b100000000000000000000000000100000000, %eax
  cmpl $0, %eax
  je e9
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e9:

  movl n, %eax
  and $0b000000000000000000000000000010000000, %eax
  cmpl $0, %eax
  je e8
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e8:

  movl n, %eax
  and $0b000000000000000000000000000001000000, %eax
  cmpl $0, %eax
  je e7
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e7:

  movl n, %eax
  and $0b000000000000000000000000000000100000, %eax
  cmpl $0, %eax
  je e6
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e6:

  movl n, %eax
  and $0b000000000000000000000000000000010000, %eax
  cmpl $0, %eax
  je e5
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e5:

  movl n, %eax
  and $0b000000000000000000000000000000001000, %eax
  cmpl $0, %eax
  je e4
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e4:

  movl n, %eax
  and $0b000000000000000000000000000000000100, %eax
  cmpl $0, %eax
  je e3
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  e3:

  movl n, %eax
  and $0b000000000000000000000000000000000010, %eax
  cmpl $0, %eax
  je e2
  movl $1, %esi
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







  movl n, %eax
  and $0b000010000000000000000000000000000000, %eax
  cmpl $0, %eax
  jne k32
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k32:


  movl n, %eax
  and $0b000001000000000000000000000000000000, %eax
  cmpl $0, %eax
  jne k31
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k31:

  movl n, %eax
  and $0b000000100000000000000000000000000000, %eax
  cmpl $0, %eax
  jne k30
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k30:

  movl n, %eax
  and $0b000000010000000000000000000000000000, %eax
  cmpl $0, %eax
  jne k29
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k29:

  movl n, %eax
  and $0b000000001000000000000000000000000000, %eax
  cmpl $0, %eax
  jne k28
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k28:

  movl n, %eax
  and $0b000000000100000000000000000000000000, %eax
  cmpl $0, %eax
  jne k27
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k27:

  movl n, %eax
  and $0b000000000010000000000000000000000000, %eax
  cmpl $0, %eax
  jne k26
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k26:

  movl n, %eax
  and $0b000000000001000000000000000000000000, %eax
  cmpl $0, %eax
  jne k25
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k25:

  movl n, %eax
  and $0b000000000000100000000000000000000000, %eax
  cmpl $0, %eax
  jne k24
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k24:

  movl n, %eax
  and $0b000000000000010000000000000000000000, %eax
  cmpl $0, %eax
  jne k23
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k23:

  movl n, %eax
  and $0b000000000000001000000000000000000000, %eax
  cmpl $0, %eax
  jne k22
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k22:
xor %eax, %eax
  movl n, %eax
  and $0b000000000000000100000000000000000000, %eax
  cmpl $0, %eax
  jne k21
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k21:

  movl n, %eax
  and $0b000000000000000010000000000000000000, %eax
  cmpl $0, %eax
  jne k20
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k20:

  movl n, %eax
  and $0b000000000000000001000000000000000000, %eax
  cmpl $0, %eax
  jne k19
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k19:

  movl n, %eax
  and $0b000000000000000000100000000000000000, %eax
  cmpl $0, %eax
  jne k18
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k18:

  movl n, %eax
  and $0b000000000000000000010000000000000000, %eax
  cmpl $0, %eax
  jne k17
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k17:

  movl n, %eax
  and $0b000000000000000000001000000000000000, %eax
  cmpl $0, %eax
  jne k16
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k16:

  movl n, %eax
  and $0b000000000000000000000100000000000000, %eax
  cmpl $0, %eax
  jne k15
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k15:

  movl n, %eax
  and $0b000000000000000000000010000000000000, %eax
  cmpl $0, %eax
  jne k14
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k14:

  movl n, %eax
  and $0b000000000000000000000001000000000000, %eax
  cmpl $0, %eax
  jne k13
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k13:

  movl n, %eax
  and $0b000000000000000000000000100000000000, %eax
  cmpl $0, %eax
  jne k12
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k12:

  movl n, %eax
  and $0b000000000000000000000000010000000000, %eax
  cmpl $0, %eax
  jne k11
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k11:

  movl n, %eax
  and $0b000000000000000000000000001000000000, %eax
  cmpl $0, %eax
  jne k10
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k10:

  movl n, %eax
  and $0b100000000000000000000000000100000000, %eax
  cmpl $0, %eax
  jne k9
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k9:

  movl n, %eax
  and $0b000000000000000000000000000010000000, %eax
  cmpl $0, %eax
  jne k8
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k8:

  movl n, %eax
  and $0b000000000000000000000000000001000000, %eax
  cmpl $0, %eax
  jne k7
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k7:

  movl n, %eax
  and $0b000000000000000000000000000000100000, %eax
  cmpl $0, %eax
  jne k6
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k6:

  movl n, %eax
  and $0b000000000000000000000000000000010000, %eax
  cmpl $0, %eax
  jne k5
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k5:

  movl n, %eax
  and $0b000000000000000000000000000000001000, %eax
  cmpl $0, %eax
  jne k4
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k4:

  movl n, %eax
  and $0b000000000000000000000000000000000100, %eax
  cmpl $0, %eax
  jne k3
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k3:

  movl n, %eax
  and $0b000000000000000000000000000000000010, %eax
  cmpl $0, %eax
  jne k2
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k2:


  movl n, %eax
  and $0b000000000000000000000000000000000001, %eax
  cmpl $0, %eax
  jne k1
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k1:


movl  $0, %eax
ret
