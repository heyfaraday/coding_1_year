.data
n:
	.space 4

l:
	.long 1
k:
	.long 1

.global func
func:

movl 4(%esp), %esi
movl 8(%esp), %edi
movl 12(%esp), %edx
movl 16(%esp), %ecx

movl %esi, n

xor %esi, %esi
xor %esp, %esp
xor %ebx, %ebx

mark:
cmpl n, %esp
je end

mark1:
cmpl n, %ebx
je end1

movl n, %eax
mull %ebx

movl %esp, %edx
addl %eax, %edx

movl (%edi, %edx, 4), %eax
movl %eax, (%ecx, %esi, 4)

inc %esi
inc %ebx

jmp mark1

end1:

inc %esp
xor %ebx, %ebx

jmp mark
end:
ret
