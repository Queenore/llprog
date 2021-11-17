.text
start:
.globl start
  la a2, array #addres of first array element
  lw a3, array_size 
  lw a4, x
  li a5, 0 #result
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
  li a0, 17
  li a1, 1 # код завершения 1 ~ exit(1) 
  ecall
  
.rodata
x:
 .word 3
.data
array_size: 
 .word 6
.rodata
array:
 .word 3, 2, 6, 1, 4, 15