.text
.globl f


f:
  movl %esi, %ecx

n:
  .long 0
i:
  .long 0
k:
  .long 1
j:
  .long 0

sum:

    movl i, %eax
    addl k, %eax



    movl k, %edx
    movl %edx, i
    movl %eax, k

    loop  sum


ret
