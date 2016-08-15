	.file	"6.c"
	.globl	m
	.bss
	.align 32
	.type	m, @object
	.size	m, 128
m:
	.zero	128
	.globl	x
	.data
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.long	64
	.globl	y
	.align 4
	.type	y, @object
	.size	y, 4
y:
	.long	63
	.globl	z
	.bss
	.align 4
	.type	z, @object
	.size	z, 4
z:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 10 "6.c" 1
	movl x, %eax
xor y, %eax
movl %eax, z

# 0 "" 2
#NO_APP
	movl	z(%rip), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits
