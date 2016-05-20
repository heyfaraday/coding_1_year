.data
printf_format:
  .string "%f"

x:
  .float 0.1, 0.2, 0.3, 0.4

y:
  .float 0.1, 0.2, 0.3, 0.4

xy:
  .float 0.0

yx:
  .float 0.0

z:
  .float

.text
.globl main

main:


  movups x, %xmm0
  movups y, %xmm1

  addps %xmm0, %xmm1

  movups %xmm1, x


  movl (x+0), %esi
  movl $printf_format, %edi
  movl $0, %eax
  call printf

  movl  $0, %eax
  ret
