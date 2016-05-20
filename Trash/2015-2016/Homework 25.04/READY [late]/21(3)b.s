.data
printf_format:
  .string "%d"


x:
  .long 0

.text
.globl main

main:

  movb $10, %al
  subb $11, %al
  movl %eax, x

  movl x, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
