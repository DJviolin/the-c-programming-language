	.text
	.intel_syntax noprefix
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.align	8
LCPI0_0:
	.quad	4603179219131243634     # double 0.55555555555555558
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
	sub	rsp, 48
.Ltmp4:
	.seh_stackalloc 48
	lea	rbp, [rsp + 48]
.Ltmp5:
	.seh_setframe 5, 48
	vmovaps	xmmword ptr [rbp - 16], xmm6 # 16-byte Spill
.Ltmp6:
	.seh_savexmm 6, 32
.Ltmp7:
	.seh_endprologue
	mov	esi, 300
	call	__main
	vmovsd	xmm6, qword ptr [rip + LCPI0_0] # xmm6 = mem[0],zero
	lea	rdi, [rip + L.str]
	.align	16, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lea	eax, [rsi - 32]
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, eax
	vmulsd	xmm0, xmm0, xmm6
	vcvtsd2ss	xmm0, xmm0, xmm0
	vcvtss2sd	xmm2, xmm0, xmm0
	mov	rcx, rdi
	mov	edx, esi
	vmovq	r8, xmm2
	call	printf
	add	esi, -20
	jns	.LBB0_1
# BB#2:
	xor	eax, eax
	vmovaps	xmm6, xmmword ptr [rbp - 16] # 16-byte Reload
	add	rsp, 48
	pop	rdi
	pop	rsi
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp8:
	.seh_endproc

	.section	.rdata,"dr"
L.str:                                  # @.str
	.asciz	"%3d %6.1f\n"


