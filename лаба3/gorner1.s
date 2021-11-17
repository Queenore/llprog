.text
start:
.globl start
  call subprog_main
exit:
  li a0, 17
  li a1, 1
  ecall