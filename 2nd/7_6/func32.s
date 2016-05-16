.data

n:
	.space 4
x:
	.space 4

y:
	.long 1
z:
	.long 1

.global func

func:

movl 4(%esp), %eax
movl %eax, n
movl n, %edx
dec %edx
dec %edx
movl %edx, n

cmpl $0, n
jg mark
movl $1, %eax
jmp end


mark:
movl y, %eax
addl z, %eax
movl %eax, x
movl z, %ebx
movl %ebx, y
movl %eax, z

movl n, %edx
dec %edx
movl %edx, n

cmpl $0, n
jne mark
movl x, %eax
end:
ret
