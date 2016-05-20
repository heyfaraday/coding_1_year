.data
printf_format:
  .string "%d\n"

array:
  .long -10, -15, -148, 12, -151, -3, -72
array_end:

.text
.globl main

main:
  movl array, %eax

  movl $array+4, %ebx

  jmp ch_bound
loop_start:
  cmpl %eax, (%ebx)


  jle less

  movl (%ebx), %eax


less:

  addl $4, %ebx


ch_bound:
  cmpl $array_end, %ebx

  jne loop_start

  /*
   * следующий код выводит число из %eax на экран и завершает программу
   */
          pushl %eax
          pushl $printf_format
          call  printf
          addl  $8, %esp

          movl  $0, %eax
          ret
