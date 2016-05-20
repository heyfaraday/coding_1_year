.data
three:
	.float 3.0
q:
	.float 2.0
p:
	.float 1.0
six:
	.float 6.0
n:
	.space 4
	.text
	.global PiViet
PiViet:
movl %edi, n
leal q, %ecx
movss (%ecx), %xmm1
movss %xmm1, %xmm2
sqrtss %xmm1, %xmm1
movss %xmm1, %xmm0
divss %xmm2, %xmm0
mark:
cmpl $1, n
je end
subl $1, n
movss %xmm1, %xmm3
addss %xmm2, %xmm3
sqrtss %xmm3, %xmm3
movss %xmm3, %xmm1
divss %xmm2, %xmm3
mulss %xmm3, %xmm0
jmp mark
end:
divss %xmm0, %xmm2
movss %xmm2, %xmm0
ret
	.global PiBaselProblem
PiBaselProblem:
movl %edi, n
leal p, %ecx
movss (%ecx), %xmm1
movss %xmm1, %xmm0
movss %xmm1, %xmm2
movss %xmm1, %xmm3
mark1:
cmpl $1, n
je end1
subl $1, n
addss %xmm1, %xmm2
movss %xmm2, %xmm3
mulss %xmm3, %xmm3
rcpss %xmm3, %xmm3
addss %xmm3, %xmm0
jmp mark1
end1:
leal six, %ecx
movss (%ecx), %xmm1
mulss %xmm1, %xmm0
sqrtss %xmm0, %xmm0
ret
	.global PiWallis
PiWallis:
movl %edi, n
leal p, %ecx
movss (%ecx), %xmm1
movss %xmm1, %xmm0
leal q, %ecx
movss (%ecx), %xmm2
movss %xmm2, %xmm3
mark2:
cmpl $0, n
je end2
subl $1, n
movss %xmm3, %xmm4
subss %xmm1, %xmm3
divss %xmm3, %xmm4
addss %xmm1, %xmm3
mulss %xmm3, %xmm4
addss %xmm1, %xmm3
divss %xmm3, %xmm4
mulss %xmm4, %xmm0
addss %xmm1, %xmm3
jmp mark2
end2:
movss %xmm3, %xmm4
addss %xmm1, %xmm3
divss %xmm3, %xmm4
divss %xmm2, %xmm4
divss %xmm2, %xmm4
addss %xmm1, %xmm4
subss %xmm1, %xmm3
mulss %xmm3, %xmm4
subss %xmm1, %xmm3
divss %xmm3, %xmm4
leal three, %ecx
movss (%ecx), %xmm6
divss %xmm2, %xmm6
divss %xmm2, %xmm6
addss %xmm6, %xmm4
mulss %xmm4, %xmm0
ret
	.global PiLeibniz
PiLeibniz:
movl %edi, n
leal p, %ecx
movss (%ecx), %xmm1
leal q, %ecx
movss (%ecx), %xmm2
movss %xmm1, %xmm3
subss %xmm2, %xmm3
movss %xmm1, %xmm0
movss %xmm1, %xmm5
movss %xmm1, %xmm6
mark3:
cmpl $1, n
je end3
subl $1, n
mulss %xmm3, %xmm5
movss %xmm5, %xmm4
addss %xmm2, %xmm6
divss %xmm6, %xmm4
addss %xmm4, %xmm0
jmp mark3
end3:
mulss %xmm2, %xmm0
mulss %xmm2, %xmm0
ret
