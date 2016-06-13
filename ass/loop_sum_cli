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
	sub	rsp, 40
.Ltmp3:
	.seh_stackalloc 40
	lea	rbp, [rsp + 32]
.Ltmp4:
	.seh_setframe 5, 32
.Ltmp5:
	.seh_endprologue
	mov	rsi, rdx
	call	__main
	mov	rcx, qword ptr [rsi + 8]
	call	atoi
	xor	edx, edx
	test	eax, eax
	jle	.LBB0_2
# BB#1:                                 # %.lr.ph.preheader
	lea	ecx, [rax - 1]
	mov	edx, eax
	add	edx, -2
	imul	rdx, rcx
	shr	rdx
	lea	edx, [rax + rdx - 1]
.LBB0_2:                                # %._crit_edge
	lea	rcx, [rip + L.str]
	call	printf
	xor	eax, eax
	add	rsp, 40
	pop	rsi
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp6:
	.seh_endproc

	.section	.rdata,"dr"
L.str:                                  # @.str
	.asciz	"sum: %ld\n"


