.data
  printf_format:
        .string "%d\n"

.text
.globl main

main:
  movl $10, %eax
  movl $10, %ecx /* В %ecx лежит счетчик цикла*/


sum:
  addl %ecx, %eax
  loop sum

/*
* следующий код выводит число в %eax на экран и завершает программу
*/

pushl %eax
pushl $printf_format
call printf

addl $8, %esp
movl $0, %eax

ret
