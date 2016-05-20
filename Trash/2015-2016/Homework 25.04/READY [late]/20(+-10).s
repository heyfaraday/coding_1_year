.data
printf_format:
  .string "%d\n"

arraya:
  .long 1, 1, 1

arrayb:
  .long -1, -1, -1

arrayc:
  .long 0
arrayc_size:
  .long (. -arrayc)/4

i:
  .long 2  /* до трет т.к. постусловие*/
j:
  .long 1
k:
  .long 3
sum:
  .long 0

l:
  .long 0

m1:
  .long 0
m2:
  .long 0


.text
.globl main
main:

  xor %eax, %eax

  movl $1, %ecx

ik:

  movl %ecx, i
  movl j, %ecx

jk:

  movl %ecx, j
  movl k, %ecx
  movl $0, sum

kk:

  xor %eax, %eax



  addl $4, %eax
  subl $1, %ecx
  mull %ecx

  movl arrayb(%eax), %eax
  movl %eax, m1



  xor %eax, %eax




  addl $4, %eax
  mull %ecx

  movl arraya(%eax), %eax
  movl %eax, m2

  movl m1, %eax
  mull m2


  addl %eax, sum

  addl $1, %ecx

  loop kk;

  movl j, %ecx


  movl sum, %eax
  movl %eax, arrayc /*hard*/

  xor %eax, %eax

loop jk

  movl i, %ecx

/*loop ik*/

  movl sum, %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
