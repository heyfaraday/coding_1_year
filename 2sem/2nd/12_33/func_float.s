.data

c:
  .space 12
d:
  .space 12
e:
  .space 12
m:
  .space 12
a:
  .space 4


.global sum
sum:

movups (%edi), %xmm0
movups (%esi), %xmm1
addps %xmm1, %xmm0
movups %xmm0, c
movl $c, %eax
ret



.global cmul
cmul:

movups (%edi), %xmm0
movl (%esi), %eax

movl %eax, c

movl $4, %ebx
movl %eax, c(%ebx)

movl $8, %ebx
movl %eax, c(%ebx)

movl $8, %ebx
movl %eax, c(%ebx)

movups c, %xmm1
mulps %xmm1, %xmm0
movups %xmm0, c
movl $c, %eax
ret



.global scmul
scmul:

movups (%edi), %xmm0
movups (%esi), %xmm1
mulps %xmm1, %xmm0

movups %xmm0, c


movl $0, %ebx
movl c(%ebx), %ecx

movl $0, %eax
movl %ecx, d(%eax)
movl $4, %eax
movl %ecx, d(%eax)
movl $8, %eax
movl %ecx, d(%eax)

movl $4, %ebx
movl c(%ebx), %ecx

movl $0, %eax
movl %ecx, e(%eax)
movl $4, %eax
movl %ecx, e(%eax)
movl $8, %eax
movl %ecx, e(%eax)

movl $8, %ebx
movl c(%ebx), %ecx

movl $0, %eax
movl %ecx, m(%eax)
movl $4, %eax
movl %ecx, m(%eax)
movl $8, %eax
movl %ecx, m(%eax)

movups c, %xmm1
movups e, %xmm2
movups m, %xmm3

addps %xmm2, %xmm1
addps %xmm3, %xmm1

movups %xmm1, c
movl $c, %eax
ret



.global scmul_g
scmul_g:


movups (%edi), %xmm0
movups (%esi), %xmm1
movups (%edx), %xmm2
mulps %xmm1, %xmm0
mulps %xmm2, %xmm0

movups %xmm0, c


movl $0, %ebx
movl c(%ebx), %ecx

movl $0, %eax
movl %ecx, d(%eax)
movl $4, %eax
movl %ecx, d(%eax)
movl $8, %eax
movl %ecx, d(%eax)

movl $4, %ebx
movl c(%ebx), %ecx

movl $0, %eax
movl %ecx, e(%eax)
movl $4, %eax
movl %ecx, e(%eax)
movl $8, %eax
movl %ecx, e(%eax)

movl $8, %ebx
movl c(%ebx), %ecx

movl $0, %eax
movl %ecx, m(%eax)
movl $4, %eax
movl %ecx, m(%eax)
movl $8, %eax
movl %ecx, m(%eax)

movups c, %xmm1
movups e, %xmm2
movups m, %xmm3

addps %xmm2, %xmm1
addps %xmm3, %xmm1

movups %xmm1, c
movl $c, %eax
ret


.global vmul
vmul:
