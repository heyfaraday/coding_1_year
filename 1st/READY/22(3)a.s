.data
printf_format:
  .string "%d"


x:
  .long 0

.text
.globl main

main:

  movl $10, %eax
  subl $11, %eax
  movl %eax, x

  movl x, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
