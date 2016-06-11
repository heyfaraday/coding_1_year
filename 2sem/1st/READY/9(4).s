.data
printf_format:
  .string "%d"

array:
  .long -1, 2, -3, 4, -5
array_end:

n:
  .long 0

.text
.globl main


main:

  movl $n, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call __isoc99_scanf

  movl  n, %eax

  movl  $array, %ebx

  jmp   ch_bound

loop_start:
  cmpl  %eax, (%ebx)
  je   less

  addl  $4, %ebx

ch_bound:
  cmpl  $array_end, %ebx
  jne    loop_start

less:

  subl $array, %ebx
  addl $4, %ebx
  movl %ebx, %eax
  movl $4, %ebx
  div  %ebx
  subl $1073741824, %eax

  movl %eax, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
