.data

c:
  .space 12
k:
  .long 1

.global sum
sum:

movl 4(%esp), %edi
movl 8(%esp), %esi

movl (%edi), %eax 
addl (%esi), %eax
movl $0, %ecx
movl %eax, c(%ecx)

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



.global cmul
cmul:

movl 4(%esp), %edi
movl 8(%esp), %esi

movl (%edi), %eax
mull (%esi)
movl %eax, c

movl 4(%edi), %eax
mull (%esi)
movl $4, %ecx
movl %eax, c(%ecx)

movl 8(%edi), %eax
mull (%esi)
movl $8, %ecx
movl %eax, c(%ecx)

movl $c, %eax
ret



.global scmul
scmul:

movl 4(%esp), %edi
movl 8(%esp), %esi

movl (%edi), %eax
mull (%esi)
movl %eax, %ebx

movl 4(%edi), %eax
mull 4(%esi)
addl %eax, %ebx

movl 8(%edi), %eax
mull 8(%esi)
addl %eax, %ebx

movl %ebx, c
movl $c, %eax
ret



.global scmul_g
scmul_g:

movl 4(%esp), %edi
movl 8(%esp), %esi
movl 12(%esp), %edx

movl (%edi), %eax
mull (%esi)
mull (%edx)
movl %eax, %ebx

movl 4(%edi), %eax
mull 4(%esi)
addl %eax, %ebx

movl 8(%edi), %eax
mull 8(%esi)
addl %eax, %ebx

movl %ebx, c
movl $c, %eax
ret



.global vmul
vmul:

movl 4(%esp), %edi
movl 8(%esp), %esi

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
