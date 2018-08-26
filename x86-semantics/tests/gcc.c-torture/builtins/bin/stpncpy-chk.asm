	.file	"stpncpy-chk.c"
	.comm	chk_fail_buf,2048,16
	.comm	chk_fail_allowed,4,4
	.comm	chk_calls,4,4
	.comm	memcpy_disallowed,4,4
	.comm	mempcpy_disallowed,4,4
	.comm	memmove_disallowed,4,4
	.comm	memset_disallowed,4,4
	.comm	strcpy_disallowed,4,4
	.comm	stpcpy_disallowed,4,4
	.comm	strncpy_disallowed,4,4
	.comm	stpncpy_disallowed,4,4
	.comm	strcat_disallowed,4,4
	.comm	strncat_disallowed,4,4
	.comm	sprintf_disallowed,4,4
	.comm	vsprintf_disallowed,4,4
	.comm	snprintf_disallowed,4,4
	.comm	vsnprintf_disallowed,4,4
	.text
	.globl	__chk_fail
__chk_fail:
	pushq	%rbp
	movq	%rsp, %rbp
	movl $chk_fail_allowed(%rip), %eax
	testl	%eax, %eax
	je	L2
	movl	$chk_fail_buf, %eax
	movq	8(%rax), %rdx
	movq	(%rax), %rbp
	movq	16(%rax), %rsp
	jmp %rdx
L2:
	call	abort
	.globl	memcpy
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L4
L5:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L4:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L5
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	__memcpy_chk
__memcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L8
	call	abort
L8:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L9
	call	__chk_fail
L9:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leave
	ret
	.globl	mempcpy
mempcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L12
L13:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L12:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L13
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__mempcpy_chk
__mempcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L16
	call	abort
L16:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L17
	call	__chk_fail
L17:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy
	leave
	ret
	.globl	memmove
memmove:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	L24
	jmp	L21
L22:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
L21:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L22
	jmp	L23
L25:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L24:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L25
L23:
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	__memmove_chk
__memmove_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L28
	call	abort
L28:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L29
	call	__chk_fail
L29:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
	leave
	ret
	.globl	memset
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	L32
L33:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movb	%dl, (%rax)
L32:
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	testq	%rax, %rax
	jne	L33
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__memset_chk
__memset_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L36
	call	abort
L36:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L37
	call	__chk_fail
L37:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset
	leave
	ret
	.globl	strcpy
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L40:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L40
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__strcpy_chk
__strcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	L43
	call	abort
L43:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-24(%rbp), %rax
	jb	L44
	call	__chk_fail
L44:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leave
	ret
	.globl	stpcpy
stpcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	L47
L48:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L47:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L48
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__stpcpy_chk
__stpcpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	L51
	call	abort
L51:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-24(%rbp), %rax
	jb	L52
	call	__chk_fail
L52:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy
	leave
	ret
	.globl	stpncpy
stpncpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	jmp	L55
L57:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
L55:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L56
	cmpq	$0, -40(%rbp)
	jne	L57
L56:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L58
L59:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
L58:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L59
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__stpncpy_chk
__stpncpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L62
	call	abort
L62:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L63
	call	__chk_fail
L63:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	leave
	ret
	.globl	strncpy
strncpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L66
L68:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
L66:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L69
	cmpq	$0, -40(%rbp)
	jne	L68
	jmp	L69
L70:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
L69:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L70
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	__strncpy_chk
__strncpy_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	L73
	call	abort
L73:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	L74
	call	__chk_fail
L74:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leave
	ret
	.globl	strcat
strcat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L77
L78:
	addq	$1, -8(%rbp)
L77:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L78
	nop
L79:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L79
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	__strcat_chk
__strcat_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$-1, -40(%rbp)
	jne	L82
	call	abort
L82:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rbx, %rax
	cmpq	-40(%rbp), %rax
	jb	L83
	call	__chk_fail
L83:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.globl	strncat
strncat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L86
L87:
	addq	$1, -24(%rbp)
L86:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L87
	movb	$0, -9(%rbp)
	jmp	L88
L91:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	-9(%rbp), %edx
	movb	%dl, (%rax)
	cmpb	$0, -9(%rbp)
	jne	L89
	movq	-8(%rbp), %rax
	jmp	L90
L89:
	subq	$1, -40(%rbp)
L88:
	cmpq	$0, -40(%rbp)
	jne	L91
	cmpb	$0, -9(%rbp)
	je	L92
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
L92:
	movq	-8(%rbp), %rax
L90:
	popq	%rbp
	ret
	.globl	__strncat_chk
__strncat_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$-1, -64(%rbp)
	jne	L94
	call	abort
L94:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	jmp	L95
L98:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L101
	addq	$1, -24(%rbp)
	subq	$1, -16(%rbp)
L95:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	L97
	cmpq	$0, -16(%rbp)
	jne	L98
	jmp	L97
L101:
	nop
L97:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	L99
	call	__chk_fail
L99:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	leave
	ret
	.comm	chk_sprintf_buf,4096,32
	.globl	__sprintf_chk
__sprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L103
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L103:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -248(%rbp)
	jne	L104
	cmpl	$0, -236(%rbp)
	jne	L104
	call	abort
L104:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movl	$32, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	js	L105
	movl	-212(%rbp), %eax
	cltq
	cmpq	-248(%rbp), %rax
	jb	L106
	call	__chk_fail
L106:
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
L105:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L108
	call	__stack_chk_fail
L108:
	leave
	ret
	.globl	__vsprintf_chk
__vsprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$-1, -40(%rbp)
	jne	L110
	cmpl	$0, -28(%rbp)
	jne	L110
	call	abort
L110:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L111
	movl	-4(%rbp), %eax
	cltq
	cmpq	-40(%rbp), %rax
	jb	L112
	call	__chk_fail
L112:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
L111:
	movl	-4(%rbp), %eax
	leave
	ret
	.globl	__snprintf_chk
__snprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L115
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L115:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpq	$-1, -256(%rbp)
	jne	L116
	cmpl	$0, -244(%rbp)
	jne	L116
	call	abort
L116:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-256(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jnb	L117
	call	__chk_fail
L117:
	movl	$40, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	js	L118
	movl	-212(%rbp), %eax
	cltq
	cmpq	-240(%rbp), %rax
	jnb	L119
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L118
L119:
	movq	-240(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-240(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
L118:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L121
	call	__stack_chk_fail
L121:
	leave
	ret
	.globl	__vsnprintf_chk
__vsnprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$-1, -48(%rbp)
	jne	L123
	cmpl	$0, -36(%rbp)
	jne	L123
	call	abort
L123:
	movl $chk_calls(%rip), %eax
	addl	$1, %eax
	movl	%eax, $chk_calls(%rip)
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	L124
	call	__chk_fail
L124:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L125
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jnb	L126
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L125
L126:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
L125:
	movl	-4(%rbp), %eax
	leave
	ret
	.globl	snprintf
snprintf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L129
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L129:
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	js	L130
	movl	-212(%rbp), %eax
	cltq
	cmpq	-240(%rbp), %rax
	jnb	L131
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L130
L131:
	cmpq	$0, -240(%rbp)
	je	L130
	movq	-240(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-232(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-240(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
L130:
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	$40, %rcx
	je	L133
	call	__stack_chk_fail
L133:
	leave
	ret
	.globl	vsnprintf
vsnprintf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$chk_sprintf_buf, %edi
	call	vsprintf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L135
	movl	-4(%rbp), %eax
	cltq
	cmpq	-32(%rbp), %rax
	jnb	L136
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	jmp	L135
L136:
	cmpq	$0, -32(%rbp)
	je	L135
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$chk_sprintf_buf, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
L135:
	movl	-4(%rbp), %eax
	leave
	ret
	.comm	inside_main,4,4
	.globl	main
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $inside_main(%rip)
	call	main_test
	movl	$0, $inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.globl	link_error
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.globl	s1
	.section	.rodata
s1:
	.string	"123"
	.globl	p
	.bss
p:
	.zero	32
	.globl	s2
	.section	.rodata
LC0:
	.string	"defg"
	.data
s2:
	.quad	LC0
	.globl	s3
	.section	.rodata
LC1:
	.string	"FGH"
	.data
s3:
	.quad	LC1
	.comm	s4,8,8
	.globl	l1
l1:
	.quad	1
	.comm	i,4,4
	.section	.rodata
LC2:
	.string	"hello world"
LC3:
	.string	"xfoo"
LC4:
	.string	"bar"
	.text
	.globl	test1
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$LC2, -104(%rbp)
	movl	$0, $chk_calls(%rip)
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	L142
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	L143
L142:
	call	abort
L143:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	$-1, %rdx
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movq	-104(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	__stpncpy_chk
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$20, %rax
	cmpq	%rax, %rdx
	jne	L144
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movq	-104(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	L145
L144:
	call	abort
L145:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	$-1, %rdx
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rsi
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	__stpncpy_chk
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$36, %rax
	cmpq	%rax, %rdx
	jne	L146
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	L147
L146:
	call	abort
L147:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$5, %rax
	cmpq	%rax, %rdx
	jne	L148
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	L148
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	je	L149
L148:
	call	abort
L149:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L150
	leaq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L151
L150:
	call	abort
L151:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	addq	$1, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	L152
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L152
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jne	L152
	movq	-104(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	L153
L152:
	call	abort
L153:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rcx
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$5, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	L154
	movq	-96(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L154
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jne	L154
	movq	-104(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	L155
L154:
	call	abort
L155:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$11, %rax
	cmpq	%rax, %rdx
	jne	L156
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L157
L156:
	call	abort
L157:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	L158
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	L159
L158:
	call	abort
L159:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movl $i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, $i(%rip)
	testl	%eax, %eax
	je	L160
	movl	$LC3+1, %ecx
	jmp	L161
L160:
	movl	$LC4, %ecx
L161:
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$3, %rax
	cmpq	%rax, %rdx
	jne	L162
	leaq	-80(%rbp), %rax
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L162
	movl $i(%rip), %eax
	cmpl	$1, %eax
	je	L163
L162:
	call	abort
L163:
	movl	$1, $stpncpy_disallowed(%rip)
	movq	$-1, %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	movq	-104(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	__strncpy_chk
	movl	$0, $stpncpy_disallowed(%rip)
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	movq	-104(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	L164
	call	abort
L164:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L167
	call	abort
L167:
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L166
	call	__stack_chk_fail
L166:
	leave
	ret
	.section	.rodata
LC5:
	.string	"abcd"
	.text
	.globl	test2
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, $chk_calls(%rip)
	movq $l1(%rip), %rax
	cmpq	$3, %rax
	ja	L169
	movq $l1(%rip), %rax
	addq	$1, %rax
	jmp	L170
L169:
	movl	$4, %eax
L170:
	movq	%rax, -8(%rbp)
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq $s4(%rip), %rax
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	movq	%rax, %rcx
	movq $s4(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, %rcx
	jne	L171
	movq $s4(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	L172
L171:
	call	abort
L172:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L174
	call	abort
L174:
	nop
	leave
	ret
	.section	.rodata
LC6:
	.string	""
LC7:
	.string	"a"
LC8:
	.string	"abc"
LC9:
	.string	"e"
LC10:
	.string	"gh"
LC11:
	.string	"jkl"
LC12:
	.string	"fghij"
	.text
	.globl	test3
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L176
	leaq	-64(%rbp), %rax
	addq	$5, %rax
	jmp	L177
L176:
	leaq	-64(%rbp), %rax
	addq	$14, %rax
L177:
	movq	%rax, -88(%rbp)
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq $s3(%rip), %rax
	leaq	3(%rax), %rsi
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L178
	call	abort
L178:
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq $s3(%rip), %rax
	leaq	2(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L179
	call	abort
L179:
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L180
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	jmp	L181
L180:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L181:
	movq	%rax, -88(%rbp)
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	leaq	2(%rax), %rdx
	movq $s2(%rip), %rax
	leaq	2(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L182
	call	abort
L182:
	movq	$-1, %rcx
	movq $l1(%rip), %rax
	movq $s3(%rip), %rdx
	leaq	3(%rdx), %rsi
	movq	-88(%rbp), %rdx
	leaq	2(%rdx), %rdi
	movq	%rax, %rdx
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L183
	call	abort
L183:
	leaq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	L184
L189:
	movl	-92(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L185
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	L186
L185:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L187
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -88(%rbp)
	jmp	L186
L187:
	movl	-92(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L188
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -88(%rbp)
	jmp	L186
L188:
	movl	-92(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L186
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -88(%rbp)
L186:
	addl	$1, -92(%rbp)
L184:
	cmpl	$3, -92(%rbp)
	jle	L189
	movq	$-1, %rcx
	movq $l1(%rip), %rdx
	movq $s2(%rip), %rax
	leaq	4(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L190
	call	abort
L190:
	movl $chk_calls(%rip), %eax
	cmpl	$5, %eax
	je	L191
	call	abort
L191:
	movl	$0, $chk_calls(%rip)
	movq	$-1, %rdx
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$LC6, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L192
	call	abort
L192:
	movq	$-1, %rdx
	leaq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$LC6, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L193
	call	abort
L193:
	movq	$-1, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L194
	call	abort
L194:
	movq	$-1, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L195
	call	abort
L195:
	movq $l1(%rip), %rax
	cmpq	$1, %rax
	jne	L196
	movl	$16, %eax
	subq	$1, %rax
	addq	$35, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	jmp	L197
L196:
	leaq	-64(%rbp), %rax
	addq	$17, %rax
L197:
	movq	%rax, -88(%rbp)
	movq	$-1, %rdx
	movl	$s1+1, %esi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L198
	call	abort
L198:
	movq	$-1, %rdx
	movl	$s1+1, %esi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L199
	call	abort
L199:
	leaq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$LC8, -80(%rbp)
	movq	$4, -72(%rbp)
	movl	$0, -92(%rbp)
	jmp	L200
L205:
	movl	-92(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L201
	leaq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	$LC9, -80(%rbp)
	movq	$2, -72(%rbp)
	jmp	L202
L201:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq $l1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L203
	leaq	-64(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -88(%rbp)
	movq	$LC10, -80(%rbp)
	movq	$3, -72(%rbp)
	jmp	L202
L203:
	movl	-92(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L204
	leaq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -88(%rbp)
	movq	$LC11, -80(%rbp)
	movq	$4, -72(%rbp)
	jmp	L202
L204:
	movl	-92(%rbp), %eax
	cltq
	movq $l1(%rip), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rax
	jne	L202
	leaq	-64(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -88(%rbp)
	movq	$LC6, -80(%rbp)
	movq	$1, -72(%rbp)
L202:
	addl	$1, -92(%rbp)
L200:
	cmpl	$3, -92(%rbp)
	jle	L205
	movq	$-1, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$LC6, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L206
	call	abort
L206:
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	16(%rcx), %rdi
	movl	$4, %ecx
	movq	%rax, %rsi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L207
	call	abort
L207:
	movq	-72(%rbp), %rax
	leaq	-32(%rbp), %rdx
	leaq	15(%rdx), %rdi
	movl	$5, %ecx
	movq	%rax, %rdx
	movl	$LC8, %esi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L208
	call	abort
L208:
	movq	-72(%rbp), %rax
	leaq	-32(%rbp), %rdx
	leaq	10(%rdx), %rdi
	movl	$10, %ecx
	movq	%rax, %rdx
	movl	$LC12, %esi
	call	__stpncpy_chk
	testq	%rax, %rax
	jne	L209
	call	abort
L209:
	movl $chk_calls(%rip), %eax
	testl	%eax, %eax
	je	L210
	call	abort
L210:
	movl	$0, $chk_calls(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L211
	call	__stack_chk_fail
L211:
	leave
	ret
	.globl	test4
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	$40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$1, $chk_fail_allowed(%rip)
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L213, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L214
L213:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L214:
	testl	%eax, %eax
	jne	L215
	movq $l1(%rip), %rax
	leaq	1(%rax), %rdx
	movq $s2(%rip), %rax
	leaq	4(%rax), %rsi
	leaq	-112(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	je	L216
	movl $i(%rip), %eax
	addl	$1, %eax
	movl	%eax, $i(%rip)
L216:
	call	abort
L215:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L217, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L218
L217:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L218:
	testl	%eax, %eax
	jne	L219
	movq $l1(%rip), %rax
	leaq	4(%rax), %rdx
	movq $s3(%rip), %rax
	leaq	-112(%rbp), %rcx
	leaq	17(%rcx), %rdi
	movl	$3, %ecx
	movq	%rax, %rsi
	call	__stpncpy_chk
	testq	%rax, %rax
	je	L220
	movl $i(%rip), %eax
	addl	$1, %eax
	movl	%eax, $i(%rip)
L220:
	call	abort
L219:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rbx
	movq	%rbx, (%rax)
	movl	$L221, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L222
L221:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L222:
	testl	%eax, %eax
	jne	L223
	leaq	-80(%rbp), %rax
	addq	$19, %rax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$LC8, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	je	L224
	movl $i(%rip), %eax
	addl	$1, %eax
	movl	%eax, $i(%rip)
L224:
	call	abort
L223:
	movl	$chk_fail_buf, %eax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$L225, %edx
	movq	%rdx, 8(%rax)
	movq	%rsp, 16(%rax)
	movl	$0, %eax
	jmp	L226
L225:
	leaq	48(%rbp), %rbp
	movl	$1, %eax
L226:
	testl	%eax, %eax
	jne	L227
	leaq	-80(%rbp), %rax
	addq	$18, %rax
	movl	$2, %ecx
	movl	$3, %edx
	movl	$LC6, %esi
	movq	%rax, %rdi
	call	__stpncpy_chk
	testq	%rax, %rax
	je	L228
	movl $i(%rip), %eax
	addl	$1, %eax
	movl	%eax, $i(%rip)
L228:
	call	abort
L227:
	movl	$0, $chk_fail_allowed(%rip)
	nop
	movq	-56(%rbp), %rax
	xorq	$40, %rax
	je	L229
	call	__stack_chk_fail
L229:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	nop
	popq	%rbp
	ret
