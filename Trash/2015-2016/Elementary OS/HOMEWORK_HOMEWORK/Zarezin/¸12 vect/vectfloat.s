	.data
a:
	.space 4
c:
	.space 16
d:
	.space 16
e:
	.space 16	
	.text
	.global SumVect
SumVect:
movups (%edi), %xmm0
movups (%esi), %xmm3
addps %xmm3, %xmm0
movups %xmm0, c
movl $c, %eax
ret
	.global MultConstVect
MultConstVect:
movups (%edi), %xmm1
leal a, %eax
movss %xmm0, (%eax)
movl $0, %eax
movl a, %ecx
movl %ecx, c(%eax)
movl $4, %eax
movl %ecx, c(%eax)
movl $8, %eax
movl %ecx, c(%eax)
movups c, %xmm0
mulps %xmm1, %xmm0
movups %xmm0, c
movl $c, %eax
ret
	.global ScalarMultVect
ScalarMultVect:
movups (%edi), %xmm0
movups (%esi), %xmm1
mulps %xmm1, %xmm0
movups %xmm0, c
movl $0, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm0
movl $4, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
addss (%edx), %xmm0
movl $8, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
addss (%edx), %xmm0
ret
	.global VectMultVect
VectMultVect:
movups (%edi), %xmm0
movups (%esi), %xmm1
movups %xmm0, c
movups %xmm1, d

movl $4, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm0

movl $8, %eax
movl d(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm1
mulps %xmm1, %xmm0

movl $8, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm1

movl $4, %eax
movl d(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm2
mulps %xmm2, %xmm1
subss %xmm1, %xmm0
movups %xmm0, e

movl $8, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm0

movl $0, %eax
movl d(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm1
mulps %xmm1, %xmm0

movl $0, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm1

movl $8, %eax
movl d(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm2
mulps %xmm2, %xmm1
subps %xmm1, %xmm0
leal a, %edx
movss %xmm0, (%edx)
movl $4, %eax
movl a, %edx
movl %edx, e(%eax)

movl $0, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm0

movl $4, %eax
movl d(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm1
mulps %xmm1, %xmm0

movl $4, %eax
movl c(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm1

movl $0, %eax
movl d(%eax), %ecx
movl %ecx, a
leal a, %edx
movss (%edx), %xmm2
mulps %xmm2, %xmm1
subps %xmm1, %xmm0
leal a, %edx
movss %xmm0, (%edx)
movl $8, %eax
movl a, %edx
movl %edx, e(%eax)

movl $e, %eax
ret

