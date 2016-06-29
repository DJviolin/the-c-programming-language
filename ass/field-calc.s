	.text
	.intel_syntax noprefix
	.def	 calc;
	.scl	2;
	.type	32;
	.endef
	.globl	calc
	.align	16, 0x90
calc:                                   # @calc
.Ltmp0:
.seh_proc calc
# BB#0:
	push	rsi
.Ltmp1:
	.seh_pushreg 6
	sub	rsp, 32
.Ltmp2:
	.seh_stackalloc 32
.Ltmp3:
	.seh_endprologue
	lea	rcx, [rip + L.str]
	call	printf
	lea	rsi, [rip + L.str.1]
	lea	rdx, [rip + calc.width]
	mov	rcx, rsi
	call	scanf
	lea	rcx, [rip + L.str.2]
	call	printf
	lea	rdx, [rip + calc.height]
	mov	rcx, rsi
	call	scanf
	vcvtss2sd	xmm1, xmm0, dword ptr [rip + calc.width]
	lea	rcx, [rip + L.str.3]
	vmovq	rdx, xmm1
	call	printf
	vcvtss2sd	xmm1, xmm0, dword ptr [rip + calc.height]
	lea	rcx, [rip + L.str.4]
	vmovq	rdx, xmm1
	call	printf
	nop
	add	rsp, 32
	pop	rsi
	ret
	.seh_handlerdata
	.text
.Ltmp4:
	.seh_endproc

	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.align	16, 0x90
main:                                   # @main
.Ltmp5:
.seh_proc main
# BB#0:
	push	rbp
.Ltmp6:
	.seh_pushreg 5
	push	rsi
.Ltmp7:
	.seh_pushreg 6
	sub	rsp, 40
.Ltmp8:
	.seh_stackalloc 40
	lea	rbp, [rsp + 32]
.Ltmp9:
	.seh_setframe 5, 32
.Ltmp10:
	.seh_endprologue
	call	__main
	call	qword ptr [rip + __imp___iob_func]
	lea	rcx, [rax + 48]
	xor	edx, edx
	call	setbuf
	lea	rcx, [rip + L.str]
	call	printf
	lea	rsi, [rip + L.str.1]
	lea	rdx, [rip + calc.width]
	mov	rcx, rsi
	call	scanf
	lea	rcx, [rip + L.str.2]
	call	printf
	lea	rdx, [rip + calc.height]
	mov	rcx, rsi
	call	scanf
	vcvtss2sd	xmm1, xmm0, dword ptr [rip + calc.width]
	lea	rcx, [rip + L.str.3]
	vmovq	rdx, xmm1
	call	printf
	vcvtss2sd	xmm1, xmm0, dword ptr [rip + calc.height]
	lea	rcx, [rip + L.str.4]
	vmovq	rdx, xmm1
	call	printf
	xor	eax, eax
	add	rsp, 40
	pop	rsi
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp11:
	.seh_endproc

	.lcomm	calc.width,4,4          # @calc.width
	.lcomm	calc.height,4,4         # @calc.height
	.section	.rdata,"dr"
L.str:                                  # @.str
	.asciz	"Step 1/2: Enter field's width: "

L.str.1:                                # @.str.1
	.asciz	"%f"

L.str.2:                                # @.str.2
	.asciz	"Step 2/2: Enter field's height: "

L.str.3:                                # @.str.3
	.asciz	"Field width: %f\n"

L.str.4:                                # @.str.4
	.asciz	"Field height: %f"


