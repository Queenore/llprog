	.file	"gorn.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__muldi3
	.align	1
	.globl	gorn
	.type	gorn, @function
gorn:
	ble	a2,zero,.L4
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	sd	s1,8(sp)
	sd	s2,0(sp)
	mv	s2,a1
	mv	s0,a0
	addiw	s1,a2,-1
	slli	a5,s1,32
	srli	s1,a5,30
	addi	a0,a0,4
	add	s1,s1,a0
	li	a1,0
.L3:
	mv	a0,s2
	call	__muldi3
	lw	a1,0(s0)
	addw	a1,a1,a0
	addi	s0,s0,4
	bne	s0,s1,.L3
	mv	a0,a1
	ld	ra,24(sp)
	ld	s0,16(sp)
	ld	s1,8(sp)
	ld	s2,0(sp)
	addi	sp,sp,32
	jr	ra
.L4:
	li	a1,0
	mv	a0,a1
	ret
	.size	gorn, .-gorn
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
