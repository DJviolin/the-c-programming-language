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
	sub	rsp, 56
.Ltmp3:
	.seh_stackalloc 56
	lea	rbp, [rsp + 48]
.Ltmp4:
	.seh_setframe 5, 48
	vmovaps	xmmword ptr [rbp - 16], xmm6 # 16-byte Spill
.Ltmp5:
	.seh_savexmm 6, 32
.Ltmp6:
	.seh_endprologue
	call	__main
	mov	dword ptr [rip + main.fahr], 0
	xor	edx, edx
	vmovsd	xmm6, qword ptr [rip + LCPI0_0] # xmm6 = mem[0],zero
	lea	rsi, [rip + L.str]
	.align	16, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lea	eax, [rdx - 32]
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, eax
	vmulsd	xmm0, xmm0, xmm6
	vcvtsd2ss	xmm0, xmm0, xmm0
	vcvtss2sd	xmm2, xmm0, xmm0
	mov	rcx, rsi
	vmovq	r8, xmm2
	call	printf
	mov	edx, dword ptr [rip + main.fahr]
	add	edx, 20
	mov	dword ptr [rip + main.fahr], edx
	cmp	edx, 301
	jl	.LBB0_1
# BB#2:
	xor	eax, eax
	vmovaps	xmm6, xmmword ptr [rbp - 16] # 16-byte Reload
	add	rsp, 56
	pop	rsi
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp7:
	.seh_endproc

	.lcomm	main.fahr,4,4           # @main.fahr
	.section	.rdata,"dr"
L.str:                                  # @.str
	.asciz	"%3d %6.1f\n"


