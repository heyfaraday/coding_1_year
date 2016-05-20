	.text
	.global mas_max
mas_max:
movl $0, %edx
movl (%edi, %edx, 4), %r9d
addl $-1, %esi
mark:
cmpl %edx, %esi
je end
addl $1, %edx
cmpl %r9d, (%edi, %edx, 4)
jg change
jmp a1
change:
movl (%edi, %edx, 4), %r9d
a1:
jmp mark
end:
movl %r9d, %eax
ret
