	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	__Z19easy_counter_resultPKcm
	.p2align	4, 0x90
__Z19easy_counter_resultPKcm:           ## @_Z19easy_counter_resultPKcm
	.cfi_startproc
## BB#0:
	movq	%rsi, %rax
	testq	%rax, %rax
	je	LBB0_1
## BB#3:
	cmpb	$32, (%rdi)
	sete	%dl
	movb	$1, %cl
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	je	LBB0_6
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	xorl	%ecx, %ecx
	cmpb	$32, (%rdi)
	setne	%cl
	addq	%rcx, %rsi
LBB0_6:                                 ##   in Loop: Header=BB0_4 Depth=1
	cmpb	$32, (%rdi)
	sete	%cl
	incq	%rdi
	decq	%rax
	jne	LBB0_4
	jmp	LBB0_2
LBB0_1:
	movb	$1, %dl
	xorl	%esi, %esi
	movb	$1, %cl
LBB0_2:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	leaq	-16(%rbp), %rdi
	callq	__ZN6resultC1Embb
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZN6resultC1Embb
	.weak_def_can_be_hidden	__ZN6resultC1Embb
	.p2align	4, 0x90
__ZN6resultC1Embb:                      ## @_ZN6resultC1Embb
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	popq	%rbp
	jmp	__ZN6resultC2Embb       ## TAILCALL
	.cfi_endproc

	.globl	__Z12easy_counterPKcm
	.p2align	4, 0x90
__Z12easy_counterPKcm:                  ## @_Z12easy_counterPKcm
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__Z19easy_counter_resultPKcm ## TAILCALL
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI3_0:
	.space	16,32
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z13smart_counterPKcm
	.p2align	4, 0x90
__Z13smart_counterPKcm:                 ## @_Z13smart_counterPKcm
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
Ltmp12:
	.cfi_offset %rbx, -56
Ltmp13:
	.cfi_offset %r12, -48
Ltmp14:
	.cfi_offset %r13, -40
Ltmp15:
	.cfi_offset %r14, -32
Ltmp16:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$63, %r15
	ja	LBB3_1
## BB#16:
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__Z12easy_counterPKcm   ## TAILCALL
LBB3_1:
	movq	%r14, %rax
	andq	$15, %rax
	movl	$16, %r13d
	subq	%rax, %r13
	xorl	%eax, %eax
	movq	%r14, %rcx
	andq	$15, %rcx
	movl	$0, %ebx
	cmovneq	%r13, %rbx
	cmovel	%eax, %r13d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__Z19easy_counter_resultPKcm
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	movl	%r15d, %r12d
	subl	%r13d, %r12d
	andl	$15, %r12d
	orq	$16, %r12
	leaq	(%r14,%r15), %rdi
	subq	%r12, %rdi
	movq	%r12, %rsi
	callq	__Z19easy_counter_resultPKcm
	addq	-56(%rbp), %rax         ## 8-byte Folded Reload
	addq	%rax, %rax
	cmpb	$32, (%r14,%rbx)
	je	LBB3_6
## BB#2:
	testq	%rbx, %rbx
	je	LBB3_4
## BB#3:
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	andl	$256, %ecx              ## imm = 0x100
	testq	%rcx, %rcx
	jne	LBB3_4
## BB#5:
	decq	%rax
	jmp	LBB3_6
LBB3_4:
	orq	$1, %rax
LBB3_6:
	subq	%r12, %r15
	cmpb	$32, -1(%r14,%r15)
	je	LBB3_10
## BB#7:
	testb	$1, %dl
	jne	LBB3_8
## BB#9:
	decq	%rax
	jmp	LBB3_10
LBB3_8:
	incq	%rax
LBB3_10:
	addq	$16, %rbx
	addq	$16, %r15
	cmpq	%r15, %rbx
	jae	LBB3_15
## BB#11:
	movaps	LCPI3_0(%rip), %xmm0    ## xmm0 = [1.356316e-19,1.356316e-19,1.356316e-19,1.356316e-19]
	## InlineAsm Start
	movdqa	(%r14), %xmm2
	pcmpeqb	%xmm0, %xmm2

	## InlineAsm End
                                        ## implicit-def: %XMM3
	.p2align	4, 0x90
LBB3_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_14 Depth 2
	leaq	(%r14,%rbx), %rcx
	## InlineAsm Start
	movdqa	(%rcx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	movdqa	%xmm1, %xmm3
	palignr	$1, %xmm2, %xmm1        ## xmm1 = xmm2[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],xmm1[0]
	xorpd	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	pmovmskb	%xmm1, %ecx

	## InlineAsm End
	testl	%ecx, %ecx
	je	LBB3_12
	.p2align	4, 0x90
LBB3_14:                                ##   Parent Loop BB3_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leal	-1(%rcx), %edx
	incq	%rax
	andl	%edx, %ecx
	jne	LBB3_14
LBB3_12:                                ##   in Loop: Header=BB3_13 Depth=1
	addq	$16, %rbx
	cmpq	%r15, %rbx
	jb	LBB3_13
LBB3_15:
	shrq	%rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp110:
	.cfi_def_cfa_offset 16
Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp112:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
Ltmp113:
	.cfi_offset %rbx, -56
Ltmp114:
	.cfi_offset %r12, -48
Ltmp115:
	.cfi_offset %r13, -40
Ltmp116:
	.cfi_offset %r14, -32
Ltmp117:
	.cfi_offset %r15, -24
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	leaq	L_.str(%rip), %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	leaq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	movzbl	-64(%rbp), %esi
	movl	%esi, %eax
	andb	$1, %al
	leaq	-63(%rbp), %rbx
	movq	-48(%rbp), %rdi
	cmoveq	%rbx, %rdi
	shrq	%rsi
	testb	%al, %al
	cmovneq	-56(%rbp), %rsi
	callq	__Z12easy_counterPKcm
Ltmp17:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp18:
## BB#1:
Ltmp19:
	leaq	L_.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %r14
Ltmp20:
## BB#2:
	movzbl	-64(%rbp), %esi
	movl	%esi, %eax
	andb	$1, %al
	cmovneq	-48(%rbp), %rbx
	shrq	%rsi
	testb	%al, %al
	cmovneq	-56(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__Z13smart_counterPKcm
Ltmp21:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp22:
## BB#3:
Ltmp23:
	leaq	L_.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp24:
## BB#4:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -160(%rbp)
	movq	$0, -144(%rbp)
	leaq	L_.str.3(%rip), %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
Ltmp25:
	leaq	-160(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp26:
## BB#5:
	movzbl	-160(%rbp), %esi
	movl	%esi, %eax
	andb	$1, %al
	leaq	-159(%rbp), %rbx
	movq	-144(%rbp), %rdi
	cmoveq	%rbx, %rdi
	shrq	%rsi
	testb	%al, %al
	cmovneq	-152(%rbp), %rsi
	callq	__Z12easy_counterPKcm
Ltmp28:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp29:
## BB#6:
Ltmp30:
	leaq	L_.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %r14
Ltmp31:
## BB#7:
	testb	$1, -160(%rbp)
	cmovneq	-144(%rbp), %rbx
	movzbl	-64(%rbp), %eax
	movq	%rax, %rsi
	shrq	%rsi
	testb	$1, %al
	cmovneq	-56(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__Z13smart_counterPKcm
Ltmp32:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp33:
## BB#8:
Ltmp34:
	leaq	L_.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp35:
## BB#9:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movq	$0, -112(%rbp)
	leaq	L_.str.4(%rip), %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
Ltmp36:
	leaq	-128(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp37:
## BB#10:
	movzbl	-128(%rbp), %esi
	movl	%esi, %eax
	andb	$1, %al
	leaq	-127(%rbp), %rbx
	movq	-112(%rbp), %rdi
	cmoveq	%rbx, %rdi
	shrq	%rsi
	testb	%al, %al
	cmovneq	-120(%rbp), %rsi
	callq	__Z12easy_counterPKcm
Ltmp39:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp40:
## BB#11:
Ltmp41:
	leaq	L_.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %r14
Ltmp42:
## BB#12:
	movzbl	-128(%rbp), %esi
	movl	%esi, %eax
	andb	$1, %al
	cmovneq	-112(%rbp), %rbx
	shrq	%rsi
	testb	%al, %al
	cmovneq	-120(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__Z13smart_counterPKcm
Ltmp43:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp44:
## BB#13:
Ltmp45:
	leaq	L_.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp46:
## BB#14:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	$0, -80(%rbp)
	leaq	L_.str.5(%rip), %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
Ltmp47:
	leaq	-96(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
Ltmp48:
## BB#15:
	movzbl	-96(%rbp), %esi
	movl	%esi, %eax
	andb	$1, %al
	leaq	-95(%rbp), %rbx
	movq	-80(%rbp), %rdi
	cmoveq	%rbx, %rdi
	shrq	%rsi
	testb	%al, %al
	cmovneq	-88(%rbp), %rsi
	callq	__Z12easy_counterPKcm
Ltmp50:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp51:
## BB#16:
Ltmp52:
	leaq	L_.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %r14
Ltmp53:
## BB#17:
	movzbl	-96(%rbp), %esi
	movl	%esi, %eax
	andb	$1, %al
	cmovneq	-80(%rbp), %rbx
	shrq	%rsi
	testb	%al, %al
	cmovneq	-88(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__Z13smart_counterPKcm
Ltmp54:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp55:
## BB#18:
Ltmp56:
	leaq	L_.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp57:
## BB#19:
	movl	$1, %r15d
	.p2align	4, 0x90
LBB4_20:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_31 Depth 2
Ltmp59:
	movl	$24, %edi
	callq	__Znwm
	movq	%rax, %r14
Ltmp60:
## BB#21:                               ##   in Loop: Header=BB4_20 Depth=1
Ltmp62:
	callq	_rand
Ltmp63:
## BB#22:                               ##   in Loop: Header=BB4_20 Depth=1
	movslq	%eax, %rsi
	addq	$1073741824, %rsi       ## imm = 0x40000000
	movq	$0, 16(%r14)
	movq	$0, 8(%r14)
	movq	$0, (%r14)
Ltmp64:
	movl	$32, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
Ltmp65:
## BB#23:                               ##   in Loop: Header=BB4_20 Depth=1
	testb	$1, (%r14)
	jne	LBB4_24
## BB#26:                               ##   in Loop: Header=BB4_20 Depth=1
	leaq	1(%r14), %rax
	jmp	LBB4_27
	.p2align	4, 0x90
LBB4_24:                                ##   in Loop: Header=BB4_20 Depth=1
	movq	16(%r14), %rax
LBB4_27:                                ##   in Loop: Header=BB4_20 Depth=1
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	movzbl	(%r14), %r12d
	testb	$1, %r12b
	movq	%r15, -176(%rbp)        ## 8-byte Spill
	jne	LBB4_28
## BB#29:                               ##   in Loop: Header=BB4_20 Depth=1
	shrq	%r12
	jmp	LBB4_30
	.p2align	4, 0x90
LBB4_28:                                ##   in Loop: Header=BB4_20 Depth=1
	movq	8(%r14), %r12
LBB4_30:                                ##   in Loop: Header=BB4_20 Depth=1
	movq	%r14, %r13
	incq	%r13
	movq	%r12, %rbx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB4_31:                                ##   Parent Loop BB4_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
Ltmp67:
	callq	_rand
Ltmp68:
## BB#32:                               ##   in Loop: Header=BB4_31 Depth=2
	testb	$1, %al
	movb	$32, %al
	jne	LBB4_34
## BB#33:                               ##   in Loop: Header=BB4_31 Depth=2
	movb	$97, %al
LBB4_34:                                ##   in Loop: Header=BB4_31 Depth=2
	testb	$1, (%r14)
	movq	%r13, %rcx
	je	LBB4_36
## BB#35:                               ##   in Loop: Header=BB4_31 Depth=2
	movq	16(%r14), %rcx
LBB4_36:                                ##   in Loop: Header=BB4_31 Depth=2
	movb	%al, (%rcx,%r15)
Ltmp69:
	callq	_rand
Ltmp70:
## BB#37:                               ##   in Loop: Header=BB4_31 Depth=2
	testb	$1, %al
	movb	$32, %al
	jne	LBB4_39
## BB#38:                               ##   in Loop: Header=BB4_31 Depth=2
	movb	$97, %al
LBB4_39:                                ##   in Loop: Header=BB4_31 Depth=2
	testb	$1, (%r14)
	movq	%r13, %rcx
	je	LBB4_41
## BB#40:                               ##   in Loop: Header=BB4_31 Depth=2
	movq	16(%r14), %rcx
LBB4_41:                                ##   in Loop: Header=BB4_31 Depth=2
	movb	%al, (%rcx,%rbx)
	incq	%r15
	decq	%rbx
	cmpq	$100, %r15
	jb	LBB4_31
## BB#42:                               ##   in Loop: Header=BB4_20 Depth=1
Ltmp72:
	callq	_clock
	movq	%rax, %r13
Ltmp73:
	movq	-176(%rbp), %r15        ## 8-byte Reload
## BB#43:                               ##   in Loop: Header=BB4_20 Depth=1
Ltmp74:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp75:
## BB#44:                               ##   in Loop: Header=BB4_20 Depth=1
Ltmp76:
	movq	%rax, %rdi
	leaq	L_.str.7(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
Ltmp77:
## BB#45:                               ##   in Loop: Header=BB4_20 Depth=1
	movq	-168(%rbp), %rdi        ## 8-byte Reload
	movq	%r12, %rsi
	callq	__Z13smart_counterPKcm
Ltmp78:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp79:
## BB#46:                               ##   in Loop: Header=BB4_20 Depth=1
Ltmp80:
	movq	%rax, %rdi
	leaq	L_.str.8(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
Ltmp81:
## BB#47:                               ##   in Loop: Header=BB4_20 Depth=1
Ltmp82:
	callq	_clock
Ltmp83:
## BB#48:                               ##   in Loop: Header=BB4_20 Depth=1
	subq	%r13, %rax
Ltmp84:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp85:
## BB#49:                               ##   in Loop: Header=BB4_20 Depth=1
Ltmp86:
	movq	%rax, %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp87:
## BB#50:                               ##   in Loop: Header=BB4_20 Depth=1
Ltmp89:
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp90:
## BB#51:                               ##   in Loop: Header=BB4_20 Depth=1
	movq	%r14, %rdi
	callq	__ZdlPv
	incq	%r15
	cmpq	$6, %r15
	jb	LBB4_20
## BB#52:
Ltmp94:
	leaq	-96(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp95:
## BB#53:
Ltmp99:
	leaq	-128(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp100:
## BB#54:
Ltmp104:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp105:
## BB#55:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorl	%eax, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_70:
Ltmp106:
	movq	%rax, %rbx
	jmp	LBB4_74
LBB4_66:
Ltmp101:
	jmp	LBB4_72
LBB4_62:
Ltmp96:
	jmp	LBB4_68
LBB4_63:
Ltmp58:
	jmp	LBB4_64
LBB4_67:
Ltmp49:
LBB4_68:
	movq	%rax, %rbx
	jmp	LBB4_69
LBB4_71:
Ltmp38:
LBB4_72:
	movq	%rax, %rbx
	jmp	LBB4_73
LBB4_25:
Ltmp27:
	movq	%rax, %rbx
	jmp	LBB4_74
LBB4_61:
Ltmp91:
	jmp	LBB4_58
LBB4_56:
Ltmp61:
	jmp	LBB4_64
LBB4_57:
Ltmp66:
LBB4_58:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZdlPv
	jmp	LBB4_65
LBB4_60:
Ltmp88:
	jmp	LBB4_64
LBB4_59:
Ltmp71:
LBB4_64:
	movq	%rax, %rbx
LBB4_65:
Ltmp92:
	leaq	-96(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp93:
LBB4_69:
Ltmp97:
	leaq	-128(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp98:
LBB4_73:
Ltmp102:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp103:
LBB4_74:
Ltmp107:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp108:
## BB#75:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB4_76:
Ltmp109:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\331\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\320\001"              ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp17-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp17
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp17-Lfunc_begin0             ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp26-Ltmp17                   ##   Call between Ltmp17 and Ltmp26
	.long	Lset3
Lset4 = Ltmp27-Lfunc_begin0             ##     jumps to Ltmp27
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp28-Lfunc_begin0             ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp37-Ltmp28                   ##   Call between Ltmp28 and Ltmp37
	.long	Lset6
Lset7 = Ltmp38-Lfunc_begin0             ##     jumps to Ltmp38
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp39-Lfunc_begin0             ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp48-Ltmp39                   ##   Call between Ltmp39 and Ltmp48
	.long	Lset9
Lset10 = Ltmp49-Lfunc_begin0            ##     jumps to Ltmp49
	.long	Lset10
	.byte	0                       ##   On action: cleanup
Lset11 = Ltmp50-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset11
Lset12 = Ltmp57-Ltmp50                  ##   Call between Ltmp50 and Ltmp57
	.long	Lset12
Lset13 = Ltmp58-Lfunc_begin0            ##     jumps to Ltmp58
	.long	Lset13
	.byte	0                       ##   On action: cleanup
Lset14 = Ltmp59-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset14
Lset15 = Ltmp60-Ltmp59                  ##   Call between Ltmp59 and Ltmp60
	.long	Lset15
Lset16 = Ltmp61-Lfunc_begin0            ##     jumps to Ltmp61
	.long	Lset16
	.byte	0                       ##   On action: cleanup
Lset17 = Ltmp62-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset17
Lset18 = Ltmp65-Ltmp62                  ##   Call between Ltmp62 and Ltmp65
	.long	Lset18
Lset19 = Ltmp66-Lfunc_begin0            ##     jumps to Ltmp66
	.long	Lset19
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp67-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset20
Lset21 = Ltmp70-Ltmp67                  ##   Call between Ltmp67 and Ltmp70
	.long	Lset21
Lset22 = Ltmp71-Lfunc_begin0            ##     jumps to Ltmp71
	.long	Lset22
	.byte	0                       ##   On action: cleanup
Lset23 = Ltmp72-Lfunc_begin0            ## >> Call Site 9 <<
	.long	Lset23
Lset24 = Ltmp87-Ltmp72                  ##   Call between Ltmp72 and Ltmp87
	.long	Lset24
Lset25 = Ltmp88-Lfunc_begin0            ##     jumps to Ltmp88
	.long	Lset25
	.byte	0                       ##   On action: cleanup
Lset26 = Ltmp89-Lfunc_begin0            ## >> Call Site 10 <<
	.long	Lset26
Lset27 = Ltmp90-Ltmp89                  ##   Call between Ltmp89 and Ltmp90
	.long	Lset27
Lset28 = Ltmp91-Lfunc_begin0            ##     jumps to Ltmp91
	.long	Lset28
	.byte	0                       ##   On action: cleanup
Lset29 = Ltmp94-Lfunc_begin0            ## >> Call Site 11 <<
	.long	Lset29
Lset30 = Ltmp95-Ltmp94                  ##   Call between Ltmp94 and Ltmp95
	.long	Lset30
Lset31 = Ltmp96-Lfunc_begin0            ##     jumps to Ltmp96
	.long	Lset31
	.byte	0                       ##   On action: cleanup
Lset32 = Ltmp99-Lfunc_begin0            ## >> Call Site 12 <<
	.long	Lset32
Lset33 = Ltmp100-Ltmp99                 ##   Call between Ltmp99 and Ltmp100
	.long	Lset33
Lset34 = Ltmp101-Lfunc_begin0           ##     jumps to Ltmp101
	.long	Lset34
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp104-Lfunc_begin0           ## >> Call Site 13 <<
	.long	Lset35
Lset36 = Ltmp105-Ltmp104                ##   Call between Ltmp104 and Ltmp105
	.long	Lset36
Lset37 = Ltmp106-Lfunc_begin0           ##     jumps to Ltmp106
	.long	Lset37
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp105-Lfunc_begin0           ## >> Call Site 14 <<
	.long	Lset38
Lset39 = Ltmp92-Ltmp105                 ##   Call between Ltmp105 and Ltmp92
	.long	Lset39
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset40 = Ltmp92-Lfunc_begin0            ## >> Call Site 15 <<
	.long	Lset40
Lset41 = Ltmp108-Ltmp92                 ##   Call between Ltmp92 and Ltmp108
	.long	Lset41
Lset42 = Ltmp109-Lfunc_begin0           ##     jumps to Ltmp109
	.long	Lset42
	.byte	1                       ##   On action: 1
Lset43 = Ltmp108-Lfunc_begin0           ## >> Call Site 16 <<
	.long	Lset43
Lset44 = Lfunc_end0-Ltmp108             ##   Call between Ltmp108 and Lfunc_end0
	.long	Lset44
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp118:
	.cfi_def_cfa_offset 16
Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp120:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp121:
	.cfi_offset %rbx, -32
Ltmp122:
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## TAILCALL
	.cfi_endproc

	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev

	.globl	__ZN6resultC2Embb
	.weak_def_can_be_hidden	__ZN6resultC2Embb
	.p2align	4, 0x90
__ZN6resultC2Embb:                      ## @_ZN6resultC2Embb
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp123:
	.cfi_def_cfa_offset 16
Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp125:
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	movb	%dl, 8(%rdi)
	movb	%cl, 9(%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp126:
	.cfi_def_cfa_offset 16
Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp128:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_strlen                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp160:
	.cfi_def_cfa_offset 16
Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp162:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp163:
	.cfi_offset %rbx, -56
Ltmp164:
	.cfi_offset %r12, -48
Ltmp165:
	.cfi_offset %r13, -40
Ltmp166:
	.cfi_offset %r14, -32
Ltmp167:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r13
Ltmp129:
	leaq	-80(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp130:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB9_11
## BB#2:
	movq	(%r13), %rax
	movq	-24(%rax), %r12
	leaq	(%r13,%r12), %r15
	movq	40(%r13,%r12), %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movl	8(%r13,%r12), %eax
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	144(%r13,%r12), %esi
	movq	%r15, %r12
	movq	%rbx, %r15
	movl	%eax, %edi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	%al, %al
	je	LBB9_8
## BB#3:
Ltmp132:
	leaq	-48(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp133:
## BB#4:
Ltmp134:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp135:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp136:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movl	%eax, %ebx
Ltmp137:
## BB#6:
Ltmp142:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp143:
## BB#7:
	movsbl	%bl, %eax
	movl	%eax, 144(%r12)
LBB9_8:
	addq	%r15, %r14
	movl	-52(%rbp), %eax         ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
	movsbl	144(%r12), %r9d
Ltmp144:
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp145:
## BB#9:
	testq	%rax, %rax
	jne	LBB9_11
## BB#10:
	movq	(%r13), %rax
	movq	-24(%rax), %rax
	leaq	(%r13,%rax), %rdi
	movl	32(%r13,%rax), %esi
	orl	$5, %esi
Ltmp146:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp147:
LBB9_11:
Ltmp151:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp152:
LBB9_21:
	movq	%r13, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB9_12:
Ltmp138:
	movq	%rax, %r14
Ltmp139:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp140:
	jmp	LBB9_16
LBB9_13:
Ltmp141:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB9_17:
Ltmp153:
	jmp	LBB9_18
LBB9_14:
Ltmp131:
LBB9_18:
	movq	%rax, %r14
	jmp	LBB9_19
LBB9_15:
Ltmp148:
	movq	%rax, %r14
LBB9_16:
Ltmp149:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp150:
LBB9_19:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%r13), %rax
	movq	-24(%rax), %rdi
	addq	%r13, %rdi
Ltmp154:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp155:
## BB#20:
	callq	___cxa_end_catch
	jmp	LBB9_21
LBB9_22:
Ltmp156:
	movq	%rax, %rbx
Ltmp157:
	callq	___cxa_end_catch
Ltmp158:
## BB#23:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB9_24:
Ltmp159:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\245\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset45 = Ltmp129-Lfunc_begin1           ## >> Call Site 1 <<
	.long	Lset45
Lset46 = Ltmp130-Ltmp129                ##   Call between Ltmp129 and Ltmp130
	.long	Lset46
Lset47 = Ltmp131-Lfunc_begin1           ##     jumps to Ltmp131
	.long	Lset47
	.byte	1                       ##   On action: 1
Lset48 = Ltmp132-Lfunc_begin1           ## >> Call Site 2 <<
	.long	Lset48
Lset49 = Ltmp133-Ltmp132                ##   Call between Ltmp132 and Ltmp133
	.long	Lset49
Lset50 = Ltmp148-Lfunc_begin1           ##     jumps to Ltmp148
	.long	Lset50
	.byte	1                       ##   On action: 1
Lset51 = Ltmp134-Lfunc_begin1           ## >> Call Site 3 <<
	.long	Lset51
Lset52 = Ltmp137-Ltmp134                ##   Call between Ltmp134 and Ltmp137
	.long	Lset52
Lset53 = Ltmp138-Lfunc_begin1           ##     jumps to Ltmp138
	.long	Lset53
	.byte	1                       ##   On action: 1
Lset54 = Ltmp142-Lfunc_begin1           ## >> Call Site 4 <<
	.long	Lset54
Lset55 = Ltmp147-Ltmp142                ##   Call between Ltmp142 and Ltmp147
	.long	Lset55
Lset56 = Ltmp148-Lfunc_begin1           ##     jumps to Ltmp148
	.long	Lset56
	.byte	1                       ##   On action: 1
Lset57 = Ltmp151-Lfunc_begin1           ## >> Call Site 5 <<
	.long	Lset57
Lset58 = Ltmp152-Ltmp151                ##   Call between Ltmp151 and Ltmp152
	.long	Lset58
Lset59 = Ltmp153-Lfunc_begin1           ##     jumps to Ltmp153
	.long	Lset59
	.byte	1                       ##   On action: 1
Lset60 = Ltmp139-Lfunc_begin1           ## >> Call Site 6 <<
	.long	Lset60
Lset61 = Ltmp140-Ltmp139                ##   Call between Ltmp139 and Ltmp140
	.long	Lset61
Lset62 = Ltmp141-Lfunc_begin1           ##     jumps to Ltmp141
	.long	Lset62
	.byte	1                       ##   On action: 1
Lset63 = Ltmp149-Lfunc_begin1           ## >> Call Site 7 <<
	.long	Lset63
Lset64 = Ltmp150-Ltmp149                ##   Call between Ltmp149 and Ltmp150
	.long	Lset64
Lset65 = Ltmp159-Lfunc_begin1           ##     jumps to Ltmp159
	.long	Lset65
	.byte	1                       ##   On action: 1
Lset66 = Ltmp150-Lfunc_begin1           ## >> Call Site 8 <<
	.long	Lset66
Lset67 = Ltmp154-Ltmp150                ##   Call between Ltmp150 and Ltmp154
	.long	Lset67
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset68 = Ltmp154-Lfunc_begin1           ## >> Call Site 9 <<
	.long	Lset68
Lset69 = Ltmp155-Ltmp154                ##   Call between Ltmp154 and Ltmp155
	.long	Lset69
Lset70 = Ltmp156-Lfunc_begin1           ##     jumps to Ltmp156
	.long	Lset70
	.byte	0                       ##   On action: cleanup
Lset71 = Ltmp155-Lfunc_begin1           ## >> Call Site 10 <<
	.long	Lset71
Lset72 = Ltmp157-Ltmp155                ##   Call between Ltmp155 and Ltmp157
	.long	Lset72
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset73 = Ltmp157-Lfunc_begin1           ## >> Call Site 11 <<
	.long	Lset73
Lset74 = Ltmp158-Ltmp157                ##   Call between Ltmp157 and Ltmp158
	.long	Lset74
Lset75 = Ltmp159-Lfunc_begin1           ##     jumps to Ltmp159
	.long	Lset75
	.byte	1                       ##   On action: 1
Lset76 = Ltmp158-Lfunc_begin1           ## >> Call Site 12 <<
	.long	Lset76
Lset77 = Lfunc_end1-Ltmp158             ##   Call between Ltmp158 and Lfunc_end1
	.long	Lset77
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp174:
	.cfi_def_cfa_offset 16
Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp176:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp177:
	.cfi_offset %rbx, -56
Ltmp178:
	.cfi_offset %r12, -48
Ltmp179:
	.cfi_offset %r13, -40
Ltmp180:
	.cfi_offset %r14, -32
Ltmp181:
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB10_12
## BB#1:
	movq	%r15, %rax
	subq	%rsi, %rax
	movq	%r8, -80(%rbp)          ## 8-byte Spill
	movq	24(%r8), %rcx
	xorl	%r13d, %r13d
	subq	%rax, %rcx
	cmovgq	%rcx, %r13
	movq	%r12, %r14
	subq	%rsi, %r14
	testq	%r14, %r14
	jle	LBB10_3
## BB#2:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, -72(%rbp)         ## 8-byte Spill
	movq	%r12, %r15
	movl	%r9d, %r12d
	callq	*96(%rax)
	movl	%r12d, %r9d
	movq	%r15, %r12
	movq	-72(%rbp), %r15         ## 8-byte Reload
	cmpq	%r14, %rax
	jne	LBB10_12
LBB10_3:
	testq	%r13, %r13
	jle	LBB10_6
## BB#4:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	movsbl	%r9b, %edx
	leaq	-64(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	testb	$1, -64(%rbp)
	leaq	-63(%rbp), %rsi
	cmovneq	-48(%rbp), %rsi
	movq	(%rbx), %rax
	movq	96(%rax), %rax
Ltmp168:
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp169:
## BB#5:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	cmpq	%r13, %r14
	jne	LBB10_12
LBB10_6:
	subq	%r12, %r15
	testq	%r15, %r15
	jle	LBB10_8
## BB#7:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB10_12
LBB10_8:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	$0, 24(%rax)
	jmp	LBB10_13
LBB10_12:
	xorl	%ebx, %ebx
LBB10_13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB10_14:
Ltmp170:
	movq	%rax, %rbx
Ltmp171:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp172:
## BB#15:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB10_16:
Ltmp173:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table10:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset78 = Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.long	Lset78
Lset79 = Ltmp168-Lfunc_begin2           ##   Call between Lfunc_begin2 and Ltmp168
	.long	Lset79
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset80 = Ltmp168-Lfunc_begin2           ## >> Call Site 2 <<
	.long	Lset80
Lset81 = Ltmp169-Ltmp168                ##   Call between Ltmp168 and Ltmp169
	.long	Lset81
Lset82 = Ltmp170-Lfunc_begin2           ##     jumps to Ltmp170
	.long	Lset82
	.byte	0                       ##   On action: cleanup
Lset83 = Ltmp169-Lfunc_begin2           ## >> Call Site 3 <<
	.long	Lset83
Lset84 = Ltmp171-Ltmp169                ##   Call between Ltmp169 and Ltmp171
	.long	Lset84
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset85 = Ltmp171-Lfunc_begin2           ## >> Call Site 4 <<
	.long	Lset85
Lset86 = Ltmp172-Ltmp171                ##   Call between Ltmp171 and Ltmp172
	.long	Lset86
Lset87 = Ltmp173-Lfunc_begin2           ##     jumps to Ltmp173
	.long	Lset87
	.byte	1                       ##   On action: 1
Lset88 = Ltmp172-Lfunc_begin2           ## >> Call Site 5 <<
	.long	Lset88
Lset89 = Lfunc_end2-Ltmp172             ##   Call between Ltmp172 and Lfunc_end2
	.long	Lset89
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp182:
	.cfi_def_cfa_offset 16
Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp184:
	.cfi_def_cfa_register %rbp
	cmpl	%esi, %edi
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__111char_traitsIcE3eofEv
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp185:
	.cfi_def_cfa_offset 16
Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp187:
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"aaa  aa   a a    aa  aaaaaa a a aa  aa a aa aaa Xxx xxx xxx xxx xxx"

L_.str.1:                               ## @.str.1
	.asciz	" "

L_.str.2:                               ## @.str.2
	.asciz	"\n"

L_.str.3:                               ## @.str.3
	.asciz	"aaa  aa   a a    aa  aaaaaa a a aa  aa a aa aaaA xx xxx xxx xxx xxx"

L_.str.4:                               ## @.str.4
	.asciz	"aaa  aa   a a    aa  aaaaaa a a aa  aa a aa aaa  xx xxx xxx xxx xxx"

L_.str.5:                               ## @.str.5
	.asciz	"aaa  aa   a a    aa  aaaaaa a a aa  aa a aa aaaAXxx xxx xxx xxx xxx"

L_.str.6:                               ## @.str.6
	.asciz	"\n\n"

L_.str.7:                               ## @.str.7
	.asciz	": ("

L_.str.8:                               ## @.str.8
	.asciz	") "


.subsections_via_symbols
