.global func
func:

movl 4(%esp), %esi
movl 4(%esp), %edi


movl $0, %ebx
movl (%esi, %ebx, 4), %eax


mark1:
cmpl %ebx, %edi
je end

addl $1, %ebx

cmpl %eax, (%esi, %ebx, 4)

jg mark2
jmp mark1

mark2:
  movl (%esi, %ebx, 4), %eax

jmp mark1

end:

ret
