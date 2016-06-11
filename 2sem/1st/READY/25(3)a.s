.data
printf_format:
  .string "%d"


x:
  .long 0

.text
.globl main

main:

  movl $10, %ecx
cycle:
  subl $1, %ecx
  cmpl $0, %ecx
  jge cycle

  movl %ecx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
