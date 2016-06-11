.data
printf_format:
  .string "%d"

n:
  .long 0
i:
  .long 0
k:
  .long 1
j:
  .long 0


.text
.globl main

main:
  movl  $0, %eax

  movl $n, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call __isoc99_scanf


  movl  n, %ecx

sum:

  movl i, %eax
  addl k, %eax



  movl k, %edx
  movl %edx, i
  movl %eax, k

  loop  sum

  movl %eax, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
