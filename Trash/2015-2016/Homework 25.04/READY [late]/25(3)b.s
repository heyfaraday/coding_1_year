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
  cmpl $0, %ecx
  subl $1, %ecx
  jge cycle

  movl %ecx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
