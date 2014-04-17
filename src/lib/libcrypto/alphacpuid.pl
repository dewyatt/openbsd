#!/usr/bin/env perl
print <<'___';
.text

.set	noat

.globl	OPENSSL_cpuid_setup
.ent	OPENSSL_cpuid_setup
OPENSSL_cpuid_setup:
	.frame	$30,0,$26
	.prologue 0
	ret	($26)
.end	OPENSSL_cpuid_setup

.globl	OPENSSL_wipe_cpu
.ent	OPENSSL_wipe_cpu
OPENSSL_wipe_cpu:
	.frame	$30,0,$26
	.prologue 0
	clr	$1
	clr	$2
	clr	$3
	clr	$4
	clr	$5
	clr	$6
	clr	$7
	clr	$8
	clr	$16
	clr	$17
	clr	$18
	clr	$19
	clr	$20
	clr	$21
	clr	$22
	clr	$23
	clr	$24
	clr	$25
	clr	$27
	clr	$at
	clr	$29
	fclr	$f0
	fclr	$f1
	fclr	$f10
	fclr	$f11
	fclr	$f12
	fclr	$f13
	fclr	$f14
	fclr	$f15
	fclr	$f16
	fclr	$f17
	fclr	$f18
	fclr	$f19
	fclr	$f20
	fclr	$f21
	fclr	$f22
	fclr	$f23
	fclr	$f24
	fclr	$f25
	fclr	$f26
	fclr	$f27
	fclr	$f28
	fclr	$f29
	fclr	$f30
	mov	$sp,$0
	ret	($26)
.end	OPENSSL_wipe_cpu

.globl	OPENSSL_atomic_add
.ent	OPENSSL_atomic_add
OPENSSL_atomic_add:
	.frame	$30,0,$26
	.prologue 0
1:	ldl_l	$0,0($16)
	addl	$0,$17,$1
	stl_c	$1,0($16)
	beq	$1,1b
	addl	$0,$17,$0
	ret	($26)
.end	OPENSSL_atomic_add
___
