.data
n:
	.space 4

.global func
func:

movl %esi, n

xor %esi, %esi
xor %r9d, %r9d
xor %r10d, %r10d

mark:
cmpl n, %r9d
je end

mark1:
cmpl n, %r10d
je end1

movl n, %eax
mull %r10d

movl %r9d, %edx
addl %eax, %edx

movl (%edi, %edx, 4), %eax
movl %eax, (%ecx, %esi, 4)

inc %esi
inc %r10d

jmp mark1

end1:

inc %r9d
xor %r10d, %r10d

jmp mark
end:
ret
