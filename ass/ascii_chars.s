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
	call	__main
	mov	dword ptr [rip + main.ch], 0
	xor	edx, edx
	lea	rsi, [rip + L.str]
	.align	16, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	mov	rcx, rsi
	mov	r8d, edx
	call	printf
	mov	edx, dword ptr [rip + main.ch]
	inc	edx
	mov	dword ptr [rip + main.ch], edx
	cmp	edx, 257
	jl	.LBB0_1
# BB#2:
	xor	eax, eax
	add	rsp, 40
	pop	rsi
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp6:
	.seh_endproc

	.lcomm	main.ch,4,4             # @main.ch
	.section	.rdata,"dr"
L.str:                                  # @.str
	.asciz	"ASCII value = %d, Character = %c\n"


