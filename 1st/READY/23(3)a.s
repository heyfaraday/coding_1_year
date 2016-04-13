.data
printf_format:
  .string "%d"


x:
  .long 0

.text
.globl main

main:

  movl $10, %edx
  movl $11, %ebx
  mull %ebx
  movl %edx, x

  movl x, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
