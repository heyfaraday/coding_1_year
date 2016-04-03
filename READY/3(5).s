.data
printf_format:
  .string "%d"

n:
  .long 5


.text
.globl main

main:

  movl $n, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call __isoc99_scanf

  movl n, %eax
  rcrl $1, %eax

  movl $0, %edx
  rcll $1, %edx

  cmpl $1, %edx


  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
