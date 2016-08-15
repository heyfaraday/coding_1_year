.data
STR:
	.string "%ld\n"
.text
.global main
main:
movq %rsp, %rsi
movl $STR, %edi
xorl %eax, %eax
call printf
pushq $1
movq %rsp, %rsi
movl $STR, %edi
xorl %eax, %eax
call printf
popq %rax
movq %rsp, %rsi
movl $STR, %edi
xorl %eax, %eax
call printf
ret
