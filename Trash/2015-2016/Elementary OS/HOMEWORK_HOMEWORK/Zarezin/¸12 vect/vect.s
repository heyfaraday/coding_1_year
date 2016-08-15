	.data
c:
	.space 12
	.text
	.global SumVect
SumVect:
movl (%edi), %eax
addl (%esi), %eax
movl %eax, c
movl 4(%edi), %eax
addl 4(%esi), %eax
movl $4, %ecx
movl %eax, c(%ecx)
movl 8(%edi), %eax
addl 8(%esi), %eax
movl $8, %ecx
movl %eax, c(%ecx)
movl $c, %eax
ret
	.global MultConstVect
MultConstVect:
movl (%edi), %eax
mull %esi
movl %eax, c
movl 4(%edi), %eax
mull %esi
movl $4, %ecx
movl %eax, c(%ecx)
movl 8(%edi), %eax
mull %esi
movl $8, %ecx
movl %eax, c(%ecx)
movl $c, %eax
ret
	.global ScalarMultVect
ScalarMultVect:
movl $c, %eax
movl (%edi), %eax
mull (%esi)
movl %eax, %ecx
movl 4(%edi), %eax
mull 4(%esi)
addl %eax, %ecx
movl 8(%edi), %eax
mull 8(%esi)
addl %eax, %ecx
movl %ecx, %eax
ret
	.global VectMultVect
VectMultVect:
movl 4(%edi), %eax
mull 8(%esi)
movl %eax, %ecx
movl 8(%edi), %eax
mull 4(%esi)
subl %eax, %ecx
movl %ecx, c
movl 8(%edi), %eax
mull (%esi)
movl %eax, %ecx
movl (%edi), %eax
mull 8(%esi)
subl %eax, %ecx
movl $4, %eax
movl %ecx, c(%eax)
movl (%edi), %eax
mull 4(%esi)
movl %eax, %ecx
movl 4(%edi), %eax
mull (%esi)
subl %eax, %ecx
movl $8, %eax
movl %ecx, c(%eax)
movl $c, %eax
ret
