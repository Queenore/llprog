.text
subprog_main:
.globl subprog_main
  la a2, array #addres of first array element
  lw a3, array_size 
  lw a4, x
  li a5, 0 #result
  addi sp, sp, -16 # выделение памяти в стеке
  sw ra, 12(sp) # сохранение ra
  call subprog
  lw ra, 12(sp) # восстановление ra
  addi sp, sp, 16 # освобождение памяти в стеке
  ret
  
.rodata
x:
  .word 3
.data
array_size: 
  .word 6
.rodata
array:
  .word 3, 2, 6, 1, 4, 15