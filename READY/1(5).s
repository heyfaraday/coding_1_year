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

  /* Простите, но я говнокодер */

  movl n, %eax
  rcrl $32, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $31, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $30, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $29, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $28, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $27, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $26, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $25, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $24, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $23, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $22, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $21, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $20, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $19, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $18, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $17, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $16, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $15, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $14, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $13, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $12, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $11, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $10, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $9, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $8, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $7, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $6, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $5, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $4, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $3, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl n, %eax
  rcrl $2, %eax
  movl $0, %edx
  rcll $1, %edx
  cmpl $1, %edx
  movl %edx, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

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
