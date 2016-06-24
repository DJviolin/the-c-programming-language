	.text
	.intel_syntax noprefix
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.align	8
LCPI0_0:
	.quad	4631850183197397430     # double 47.275008
LCPI0_1:
	.quad	4626133122427429159     # double 19.326423999999999
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
	sub	rsp, 32
.Ltmp2:
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
.Ltmp3:
	.seh_setframe 5, 32
.Ltmp4:
	.seh_endprologue
	call	__main
	mov	byte ptr [rip + main.fucked], 1
	movabs	rax, 4631850183197397430
	mov	qword ptr [rip + main.gpsLat], rax
	lea	rcx, [rip + L.str]
	vmovsd	xmm1, qword ptr [rip + LCPI0_0] # xmm1 = mem[0],zero
	vmovsd	xmm2, qword ptr [rip + LCPI0_1] # xmm2 = mem[0],zero
	vmovq	rdx, xmm1
	vmovq	r8, xmm2
	call	printf
	lea	rcx, [rip + L.str.3]
	call	printf
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.seh_handlerdata
	.text
.Ltmp5:
	.seh_endproc

	.lcomm	main.fucked,1           # @main.fucked
	.lcomm	main.gpsLat,8,8         # @main.gpsLat
	.section	.rdata,"dr"
L.str:                                  # @.str
	.asciz	"Hey! Your man is having sexual intercourse at the moment.\nAre you at the other side?\nIf the answer is no, than you know where is your knife!\nThe GPS coordinates are: %9.6f\302\260 %9.6f\302\260"

L.str.3:                                # @.str.3
	.asciz	"\n\nProgram finished execution!"


