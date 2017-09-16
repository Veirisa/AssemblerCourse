	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	__Z11easy_memcpyPvPKvm
	.p2align	4, 0x90
__Z11easy_memcpyPvPKvm:                 ## @_Z11easy_memcpyPvPKvm
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	testq	%rdx, %rdx
	je	LBB0_2
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	incq	%rsi
	incq	%rdi
	decq	%rdx
	jne	LBB0_1
LBB0_2:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z12smart_memcpyPvPKvm
	.p2align	4, 0x90
__Z12smart_memcpyPvPKvm:                ## @_Z12smart_memcpyPvPKvm
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp6:
	.cfi_offset %rbx, -56
Ltmp7:
	.cfi_offset %r12, -48
Ltmp8:
	.cfi_offset %r13, -40
Ltmp9:
	.cfi_offset %r14, -32
Ltmp10:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	cmpq	$63, %r14
	ja	LBB1_3
## BB#1:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	jmp	LBB1_2
LBB1_3:
	movq	%r12, %rax
	andq	$31, %rax
	movl	$32, %r13d
	subq	%rax, %r13
	xorl	%eax, %eax
	movq	%r12, %rcx
	andq	$31, %rcx
	movl	$0, %ebx
	cmovneq	%r13, %rbx
	cmovel	%eax, %r13d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	__Z11easy_memcpyPvPKvm
	movl	%r14d, %edx
	subl	%r13d, %edx
	andl	$31, %edx
	movq	%r14, %rax
	subq	%rdx, %rax
	jmp	LBB1_4
	.p2align	4, 0x90
LBB1_6:                                 ##   in Loop: Header=BB1_4 Depth=1
	## InlineAsm Start
	vmovdqu	(%r15,%rbx), %ymm1
	vmovntdq	%ymm1, (%rbx,%r12)

	## InlineAsm End
	addq	$32, %rbx
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rbx
	jb	LBB1_6
## BB#5:
	addq	%r14, %r12
	subq	%rdx, %r12
	addq	%r14, %r15
	subq	%rdx, %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
LBB1_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__Z11easy_memcpyPvPKvm  ## TAILCALL
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp11:
	.cfi_def_cfa_offset 16
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp14:
	.cfi_offset %rbx, -56
Ltmp15:
	.cfi_offset %r12, -48
Ltmp16:
	.cfi_offset %r13, -40
Ltmp17:
	.cfi_offset %r14, -32
Ltmp18:
	.cfi_offset %r15, -24
	movl	$1, %r14d
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
                                        ##     Child Loop BB2_5 Depth 2
	callq	_rand
	movslq	%eax, %r13
	addq	$1073741824, %r13       ## imm = 0x40000000
	movq	%r13, %rdi
	callq	__Znam
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	__Znam
	movq	%rax, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_rand
	movb	%al, (%r12,%rbx)
	incq	%rbx
	cmpq	$1000, %rbx             ## imm = 0x3E8
	jne	LBB2_2
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	callq	_clock
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	__Z12smart_memcpyPvPKvm
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	movq	%rax, %rdi
	leaq	L_.str(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
	callq	_clock
	subq	-48(%rbp), %rax         ## 8-byte Folded Reload
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB2_5:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rax), %ecx
	cmpb	(%r12,%rax), %cl
	jne	LBB2_6
## BB#4:                                ##   in Loop: Header=BB2_5 Depth=2
	incq	%rax
	movb	$1, %bl
	cmpq	$999, %rax              ## imm = 0x3E7
	jbe	LBB2_5
	jmp	LBB2_7
	.p2align	4, 0x90
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	xorl	%ebx, %ebx
LBB2_7:                                 ##   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movzbl	%bl, %esi
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb
	movq	%rax, %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%r15, %rdi
	callq	__ZdaPv
	movq	%r12, %rdi
	callq	__ZdaPv
	incq	%r14
	cmpq	$6, %r14
	jne	LBB2_1
## BB#8:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp19:
	.cfi_def_cfa_offset 16
Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp22:
	.cfi_offset %rbx, -32
Ltmp23:
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

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp55:
	.cfi_def_cfa_offset 16
Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp58:
	.cfi_offset %rbx, -56
Ltmp59:
	.cfi_offset %r12, -48
Ltmp60:
	.cfi_offset %r13, -40
Ltmp61:
	.cfi_offset %r14, -32
Ltmp62:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r13
Ltmp24:
	leaq	-80(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp25:
## BB#1:
	cmpb	$0, -80(%rbp)
	je	LBB4_11
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
	je	LBB4_8
## BB#3:
Ltmp27:
	leaq	-48(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp28:
## BB#4:
Ltmp29:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp30:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp31:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movl	%eax, %ebx
Ltmp32:
## BB#6:
Ltmp37:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp38:
## BB#7:
	movsbl	%bl, %eax
	movl	%eax, 144(%r12)
LBB4_8:
	addq	%r15, %r14
	movl	-52(%rbp), %eax         ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
	movsbl	144(%r12), %r9d
Ltmp39:
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp40:
## BB#9:
	testq	%rax, %rax
	jne	LBB4_11
## BB#10:
	movq	(%r13), %rax
	movq	-24(%rax), %rax
	leaq	(%r13,%rax), %rdi
	movl	32(%r13,%rax), %esi
	orl	$5, %esi
Ltmp41:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp42:
LBB4_11:
Ltmp46:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp47:
LBB4_21:
	movq	%r13, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_12:
Ltmp33:
	movq	%rax, %r14
Ltmp34:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp35:
	jmp	LBB4_16
LBB4_13:
Ltmp36:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB4_17:
Ltmp48:
	jmp	LBB4_18
LBB4_14:
Ltmp26:
LBB4_18:
	movq	%rax, %r14
	jmp	LBB4_19
LBB4_15:
Ltmp43:
	movq	%rax, %r14
LBB4_16:
Ltmp44:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp45:
LBB4_19:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%r13), %rax
	movq	-24(%rax), %rdi
	addq	%r13, %rdi
Ltmp49:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp50:
## BB#20:
	callq	___cxa_end_catch
	jmp	LBB4_21
LBB4_22:
Ltmp51:
	movq	%rax, %rbx
Ltmp52:
	callq	___cxa_end_catch
Ltmp53:
## BB#23:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB4_24:
Ltmp54:
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
	.asciz	"\245\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset0 = Ltmp24-Lfunc_begin0             ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp25-Ltmp24                   ##   Call between Ltmp24 and Ltmp25
	.long	Lset1
Lset2 = Ltmp26-Lfunc_begin0             ##     jumps to Ltmp26
	.long	Lset2
	.byte	1                       ##   On action: 1
Lset3 = Ltmp27-Lfunc_begin0             ## >> Call Site 2 <<
	.long	Lset3
Lset4 = Ltmp28-Ltmp27                   ##   Call between Ltmp27 and Ltmp28
	.long	Lset4
Lset5 = Ltmp43-Lfunc_begin0             ##     jumps to Ltmp43
	.long	Lset5
	.byte	1                       ##   On action: 1
Lset6 = Ltmp29-Lfunc_begin0             ## >> Call Site 3 <<
	.long	Lset6
Lset7 = Ltmp32-Ltmp29                   ##   Call between Ltmp29 and Ltmp32
	.long	Lset7
Lset8 = Ltmp33-Lfunc_begin0             ##     jumps to Ltmp33
	.long	Lset8
	.byte	1                       ##   On action: 1
Lset9 = Ltmp37-Lfunc_begin0             ## >> Call Site 4 <<
	.long	Lset9
Lset10 = Ltmp42-Ltmp37                  ##   Call between Ltmp37 and Ltmp42
	.long	Lset10
Lset11 = Ltmp43-Lfunc_begin0            ##     jumps to Ltmp43
	.long	Lset11
	.byte	1                       ##   On action: 1
Lset12 = Ltmp46-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset12
Lset13 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset13
Lset14 = Ltmp48-Lfunc_begin0            ##     jumps to Ltmp48
	.long	Lset14
	.byte	1                       ##   On action: 1
Lset15 = Ltmp34-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset15
Lset16 = Ltmp35-Ltmp34                  ##   Call between Ltmp34 and Ltmp35
	.long	Lset16
Lset17 = Ltmp36-Lfunc_begin0            ##     jumps to Ltmp36
	.long	Lset17
	.byte	1                       ##   On action: 1
Lset18 = Ltmp44-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset18
Lset19 = Ltmp45-Ltmp44                  ##   Call between Ltmp44 and Ltmp45
	.long	Lset19
Lset20 = Ltmp54-Lfunc_begin0            ##     jumps to Ltmp54
	.long	Lset20
	.byte	1                       ##   On action: 1
Lset21 = Ltmp45-Lfunc_begin0            ## >> Call Site 8 <<
	.long	Lset21
Lset22 = Ltmp49-Ltmp45                  ##   Call between Ltmp45 and Ltmp49
	.long	Lset22
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset23 = Ltmp49-Lfunc_begin0            ## >> Call Site 9 <<
	.long	Lset23
Lset24 = Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.long	Lset24
Lset25 = Ltmp51-Lfunc_begin0            ##     jumps to Ltmp51
	.long	Lset25
	.byte	0                       ##   On action: cleanup
Lset26 = Ltmp50-Lfunc_begin0            ## >> Call Site 10 <<
	.long	Lset26
Lset27 = Ltmp52-Ltmp50                  ##   Call between Ltmp50 and Ltmp52
	.long	Lset27
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset28 = Ltmp52-Lfunc_begin0            ## >> Call Site 11 <<
	.long	Lset28
Lset29 = Ltmp53-Ltmp52                  ##   Call between Ltmp52 and Ltmp53
	.long	Lset29
Lset30 = Ltmp54-Lfunc_begin0            ##     jumps to Ltmp54
	.long	Lset30
	.byte	1                       ##   On action: 1
Lset31 = Ltmp53-Lfunc_begin0            ## >> Call Site 12 <<
	.long	Lset31
Lset32 = Lfunc_end0-Ltmp53              ##   Call between Ltmp53 and Lfunc_end0
	.long	Lset32
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp63:
	.cfi_def_cfa_offset 16
Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp65:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	_strlen                 ## TAILCALL
	.cfi_endproc

	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp72:
	.cfi_def_cfa_offset 16
Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp74:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp75:
	.cfi_offset %rbx, -56
Ltmp76:
	.cfi_offset %r12, -48
Ltmp77:
	.cfi_offset %r13, -40
Ltmp78:
	.cfi_offset %r14, -32
Ltmp79:
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	LBB6_12
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
	jle	LBB6_3
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
	jne	LBB6_12
LBB6_3:
	testq	%r13, %r13
	jle	LBB6_6
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
Ltmp66:
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp67:
## BB#5:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	cmpq	%r13, %r14
	jne	LBB6_12
LBB6_6:
	subq	%r12, %r15
	testq	%r15, %r15
	jle	LBB6_8
## BB#7:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB6_12
LBB6_8:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	$0, 24(%rax)
	jmp	LBB6_13
LBB6_12:
	xorl	%ebx, %ebx
LBB6_13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_14:
Ltmp68:
	movq	%rax, %rbx
Ltmp69:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp70:
## BB#15:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB6_16:
Ltmp71:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset33 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset33
Lset34 = Ltmp66-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp66
	.long	Lset34
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset35 = Ltmp66-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset35
Lset36 = Ltmp67-Ltmp66                  ##   Call between Ltmp66 and Ltmp67
	.long	Lset36
Lset37 = Ltmp68-Lfunc_begin1            ##     jumps to Ltmp68
	.long	Lset37
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp67-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset38
Lset39 = Ltmp69-Ltmp67                  ##   Call between Ltmp67 and Ltmp69
	.long	Lset39
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset40 = Ltmp69-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset40
Lset41 = Ltmp70-Ltmp69                  ##   Call between Ltmp69 and Ltmp70
	.long	Lset41
Lset42 = Ltmp71-Lfunc_begin1            ##     jumps to Ltmp71
	.long	Lset42
	.byte	1                       ##   On action: 1
Lset43 = Ltmp70-Lfunc_begin1            ## >> Call Site 5 <<
	.long	Lset43
Lset44 = Lfunc_end1-Ltmp70              ##   Call between Ltmp70 and Lfunc_end1
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
	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev

	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp80:
	.cfi_def_cfa_offset 16
Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp82:
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
Ltmp83:
	.cfi_def_cfa_offset 16
Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp85:
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	": "

L_.str.1:                               ## @.str.1
	.asciz	" (ok: "

L_.str.2:                               ## @.str.2
	.asciz	")\n"


.subsections_via_symbols
