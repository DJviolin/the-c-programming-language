	.text
	.intel_syntax noprefix
	.def	 foo;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.align	8
LCPI0_0:
	.quad	4603179219131243634     # double 0.55555555555555558
	.text
	.globl	foo
	.align	16, 0x90
foo:                                    # @foo
.Ltmp0:
.seh_proc foo
# BB#0:
	push	rsi
.Ltmp1:
	.seh_pushreg 6
	sub	rsp, 48
.Ltmp2:
	.seh_stackalloc 48
	vmovaps	xmmword ptr [rsp + 32], xmm6 # 16-byte Spill
.Ltmp3:
	.seh_savexmm 6, 32
.Ltmp4:
	.seh_endprologue
	mov	dword ptr [rip + foo.fahr], 300
	mov	edx, 300
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
	mov	edx, dword ptr [rip + foo.fahr]
	add	edx, -20
	mov	dword ptr [rip + foo.fahr], edx
	jns	.LBB0_1
# BB#2:
	vmovaps	xmm6, xmmword ptr [rsp + 32] # 16-byte Reload
	add	rsp, 48
	pop	rsi
	ret
	.seh_handlerdata
	.text
.Ltmp5:
	.seh_endproc

	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.align	8
LCPI1_0:
	.quad	4603179219131243634     # double 0.55555555555555558
	.text
	.globl	main
	.align	16, 0x90
main:                                   # @main
.Ltmp6:
.seh_proc main
# BB#0:
	push	rbp
.Ltmp7:
	.seh_pushreg 5
	push	rsi
.Ltmp8:
	.seh_pushreg 6
	sub	rsp, 56
.Ltmp9:
	.seh_stackalloc 56
	lea	rbp, [rsp + 48]
.Ltmp10:
	.seh_setframe 5, 48
	vmovaps	xmmword ptr [rbp - 16], xmm6 # 16-byte Spill
.Ltmp11:
	.seh_savexmm 6, 32
.Ltmp12:
	.seh_endprologue
	call	__main
	mov	dword ptr [rip + foo.fahr], 300
	mov	edx, 300
	vmovsd	xmm6, qword ptr [rip + LCPI1_0] # xmm6 = mem[0],zero
	lea	rsi, [rip + L.str]
	.align	16, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lea	eax, [rdx - 32]
	vxorps	xmm0, xmm0, xmm0
	vcvtsi2sd	xmm0, xmm0, eax
	vmulsd	xmm0, xmm0, xmm6
	vcvtsd2ss	xmm0, xmm0, xmm0
	vcvtss2sd	xmm2, xmm0, xmm0
	mov	rcx, rsi
	vmovq	r8, xmm2
	call	printf
	mov	edx, dword ptr [rip + foo.fahr]
	add	edx, -20
	mov	dword ptr [rip + foo.fahr], edx
	jns	.LBB1_1
# BB#2:                                 # %foo.exit
	xor	eax, eax
	vmovaps	xmm6, xmmword ptr [rbp - 16] # 16-byte Reload
	add	rsp, 56
	pop	rsi
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp13:
	.seh_endproc

	.lcomm	foo.fahr,4,4            # @foo.fahr
	.section	.rdata,"dr"
L.str:                                  # @.str
	.asciz	"%3d %6.1f\n"


