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
	sub	rsp, 32
.Ltmp2:
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
.Ltmp3:
	.seh_setframe 5, 32
.Ltmp4:
	.seh_endprologue
	call	__main
	lea	rcx, [rip + L.str]
	mov	edx, -2014260032
	call	printf
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp5:
	.seh_endproc

	.section	.rdata,"dr"
L.str:                                  # @.str
	.asciz	"sum: %ld\n"


