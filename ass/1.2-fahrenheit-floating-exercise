	.text
	.intel_syntax noprefix
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.align	8
LCPI0_0:
	.quad	4610785298501913805     # double 1.8
LCPI0_1:
	.quad	4629700416936869888     # double 32
	.text
	.globl	main
	.align	16, 0x90
main:                                   # @main
.Ltmp0:
.seh_proc main
# BB#0:
	push	rbp
.Ltmp1:
	.seh_pushreg 5
	push	rsi
.Ltmp2:
	.seh_pushreg 6
	push	rdi
.Ltmp3:
	.seh_pushreg 7
	sub	rsp, 64
.Ltmp4:
	.seh_stackalloc 64
	lea	rbp, [rsp + 64]
.Ltmp5:
	.seh_setframe 5, 64
	vmovaps	xmmword ptr [rbp - 16], xmm7 # 16-byte Spill
.Ltmp6:
	.seh_savexmm 7, 48
	vmovaps	xmmword ptr [rbp - 32], xmm6 # 16-byte Spill
.Ltmp7:
	.seh_savexmm 6, 32
.Ltmp8:
	.seh_endprologue
	call	__main
	lea	rcx, [rip + Lstr]
	call	puts
	xor	edi, edi
	vmovsd	xmm6, qword ptr [rip + LCPI0_0] # xmm6 = mem[0],zero
	vmovsd	xmm7, qword ptr [rip + LCPI0_1] # xmm7 = mem[0],zero
	lea	rsi, [rip + L.str.1]
	.align	16, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2ss	xmm0, xmm0, edi
	vcvtss2sd	xmm1, xmm0, xmm0
	vmulsd	xmm0, xmm1, xmm6
	vaddsd	xmm0, xmm0, xmm7
	vcvtsd2ss	xmm0, xmm0, xmm0
	vcvtss2sd	xmm2, xmm0, xmm0
	mov	rcx, rsi
	vmovq	rdx, xmm1
	vmovq	r8, xmm2
	call	printf
	add	edi, 20
	cmp	edi, 301
	jl	.LBB0_1
# BB#2:
	xor	eax, eax
	vmovaps	xmm6, xmmword ptr [rbp - 32] # 16-byte Reload
	vmovaps	xmm7, xmmword ptr [rbp - 16] # 16-byte Reload
	add	rsp, 64
	pop	rdi
	pop	rsi
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp9:
	.seh_endproc

	.section	.rdata,"dr"
L.str.1:                                # @.str.1
	.asciz	"%3.0f \302\260C\t %5.1f \302\260F\n"

	.align	16                      # @str
Lstr:
	.asciz	"\n/////////////////////////////////////////////////////////////\n// This program prints Celsius to Fahrenheit conversion table\n/////////////////////////////////////////////////////////////\n"


