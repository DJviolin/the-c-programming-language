	.text
	.intel_syntax noprefix
	.def	 main;
	.scl	2;
	.type	32;
	.endef
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
	push	rbx
.Ltmp4:
	.seh_pushreg 3
	sub	rsp, 40
.Ltmp5:
	.seh_stackalloc 40
	lea	rbp, [rsp + 32]
.Ltmp6:
	.seh_setframe 5, 32
.Ltmp7:
	.seh_endprologue
	xor	esi, esi
	mov	ebx, -160
	call	__main
	lea	rdi, [rip + L.str]
	.align	16, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movsxd	rbx, ebx
	imul	r8, rbx, 954437177
	mov	rax, r8
	shr	rax, 63
	sar	r8, 33
	add	r8d, eax
	mov	rcx, rdi
	mov	edx, esi
	call	printf
	add	esi, 20
	add	ebx, 100
	cmp	esi, 301
	jl	.LBB0_1
# BB#2:
	xor	eax, eax
	add	rsp, 40
	pop	rbx
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
	.asciz	"%3d\t%6d\n"


