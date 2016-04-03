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
  jmp k32
  e32:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k32:


  movl n, %eax
  and $0b000001000000000000000000000000000000, %eax
  cmpl $0, %eax
  je e31
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k31
  e31:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k31:

  movl n, %eax
  and $0b000000100000000000000000000000000000, %eax
  cmpl $0, %eax
  je e30
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k30
  e30:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k30:

  movl n, %eax
  and $0b000000010000000000000000000000000000, %eax
  cmpl $0, %eax
  je e29
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k29
  e29:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k29:

  movl n, %eax
  and $0b000000001000000000000000000000000000, %eax
  cmpl $0, %eax
  je e28
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k28
  e28:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k28:

  movl n, %eax
  and $0b000000000100000000000000000000000000, %eax
  cmpl $0, %eax
  je e27
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k27
  e27:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k27:

  movl n, %eax
  and $0b000000000010000000000000000000000000, %eax
  cmpl $0, %eax
  je e26
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k26
  e26:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k26:

  movl n, %eax
  and $0b000000000001000000000000000000000000, %eax
  cmpl $0, %eax
  je e25
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k25
  e25:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k25:

  movl n, %eax
  and $0b000000000000100000000000000000000000, %eax
  cmpl $0, %eax
  je e24
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k24
  e24:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k24:

  movl n, %eax
  and $0b000000000000010000000000000000000000, %eax
  cmpl $0, %eax
  je e23
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k23
  e23:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k23:

  movl n, %eax
  and $0b000000000000001000000000000000000000, %eax
  cmpl $0, %eax
  je e22
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k22
  e22:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k22:

  movl n, %eax
  and $0b000000000000000100000000000000000000, %eax
  cmpl $0, %eax
  je e21
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k21
  e21:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k21:

  movl n, %eax
  and $0b000000000000000010000000000000000000, %eax
  cmpl $0, %eax
  je e20
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k20
  e20:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k20:

  movl n, %eax
  and $0b000000000000000001000000000000000000, %eax
  cmpl $0, %eax
  je e19
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k19
  e19:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k19:

  movl n, %eax
  and $0b000000000000000000100000000000000000, %eax
  cmpl $0, %eax
  je e18
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k18
  e18:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k18:

  movl n, %eax
  and $0b000000000000000000010000000000000000, %eax
  cmpl $0, %eax
  je e17
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k17
  e17:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k17:

  movl n, %eax
  and $0b000000000000000000001000000000000000, %eax
  cmpl $0, %eax
  je e16
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k16
  e16:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k16:

  movl n, %eax
  and $0b000000000000000000000100000000000000, %eax
  cmpl $0, %eax
  je e15
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k15
  e15:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k15:

  movl n, %eax
  and $0b000000000000000000000010000000000000, %eax
  cmpl $0, %eax
  je e14
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k14
  e14:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k14:

  movl n, %eax
  and $0b000000000000000000000001000000000000, %eax
  cmpl $0, %eax
  je e13
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k13
  e13:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k13:

  movl n, %eax
  and $0b000000000000000000000000100000000000, %eax
  cmpl $0, %eax
  je e12
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k12
  e12:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k12:

  movl n, %eax
  and $0b000000000000000000000000010000000000, %eax
  cmpl $0, %eax
  je e11
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k11
  e11:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k11:

  movl n, %eax
  and $0b000000000000000000000000001000000000, %eax
  cmpl $0, %eax
  je e10
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k10
  e10:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k10:

  movl n, %eax
  and $0b100000000000000000000000000100000000, %eax
  cmpl $0, %eax
  je e9
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k9
  e9:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k9:

  movl n, %eax
  and $0b000000000000000000000000000010000000, %eax
  cmpl $0, %eax
  je e8
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k8
  e8:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k8:

  movl n, %eax
  and $0b000000000000000000000000000001000000, %eax
  cmpl $0, %eax
  je e7
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k7
  e7:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k7:

  movl n, %eax
  and $0b000000000000000000000000000000100000, %eax
  cmpl $0, %eax
  je e6
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k6
  e6:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k6:

  movl n, %eax
  and $0b000000000000000000000000000000010000, %eax
  cmpl $0, %eax
  je e5
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k5
  e5:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k5:

  movl n, %eax
  and $0b000000000000000000000000000000001000, %eax
  cmpl $0, %eax
  je e4
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k4
  e4:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k4:

  movl n, %eax
  and $0b000000000000000000000000000000000100, %eax
  cmpl $0, %eax
  je e3
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k3
  e3:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k3:

  movl n, %eax
  and $0b000000000000000000000000000000000010, %eax
  cmpl $0, %eax
  je e2
  movl $1, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  jmp k2
  e2:
  movl $0, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf
  k2:


  movl n, %eax
  and $0b000000000000000000000000000000000001, %eax
  movl %eax, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

movl  $0, %eax
ret
