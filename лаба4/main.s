	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	ld	a4,0(a5)
	sd	a4,8(sp)
	ld	a4,8(a5)
	sd	a4,16(sp)
	ld	a5,16(a5)
	sd	a5,24(sp)
	li	a2,6
	li	a1,3
	addi	a0,sp,8
	call	gorn
	mv	a1,a0
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
	li	a0,0
	ld	ra,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	3
	.word	2
	.word	6
	.word	1
	.word	4
	.word	15
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
