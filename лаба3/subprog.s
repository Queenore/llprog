.text
subprog:
.globl subprog
  lw t1, 0(a2)
  li a7, 1 #a7 = 1
loop:
  mul a5, a5, a4
  add a5, a5, t1
  addi a2, a2, 4
  lw t1, 0(a2)
  sub a3, a3, a7
  beqz a3, exit
  jal zero, loop
exit:
  ret