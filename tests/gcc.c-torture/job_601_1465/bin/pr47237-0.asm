	.file	"pr47237.c"
	.text
	.globl	strchr
	.type	strchr, @function
strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	cmpb	%dl, %al
	je	.L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L1
.L3:
	movq	-8(%rbp), %rax
	jmp	.L1
.L6:
.L1:
	popq	%rbp
	ret
	.size	strchr, .-strchr
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L12:
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
	jne	.L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L17
.L16:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	ret
	.size	memcmp, .-memcmp
	.globl	exit
	.type	exit, @function
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
#APP
# 41 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	exit, .-exit
	.globl	abort
	.type	abort, @function
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 46 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	abort, .-abort
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L26
.L27:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	malloc
	.type	malloc, @function
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	malloc, .-malloc
	.globl	calloc
	.type	calloc, @function
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	calloc, .-calloc
	.globl	free
	.type	free, @function
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
	.size	free, .-free
	.globl	isprint
	.type	isprint, @function
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	.L35
	cmpl	$122, -4(%rbp)
	jg	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	cmpl	$64, -4(%rbp)
	jle	.L37
	cmpl	$90, -4(%rbp)
	jg	.L37
	movl	$1, %eax
	jmp	.L36
.L37:
	cmpl	$47, -4(%rbp)
	jle	.L38
	cmpl	$57, -4(%rbp)
	jg	.L38
	movl	$1, %eax
	jmp	.L36
.L38:
	movl	$0, %eax
.L36:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.type	foo, @function
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
	je	.L39
	call	abort
.L39:
	leave
	ret
	.size	foo, .-foo
	.type	bar, @function
bar:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	pushq	%rbx
	subq	$512, %rsp
	movq	%rax, -392(%rbp)
	movq	%rdx, -384(%rbp)
	movq	%rcx, -376(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdi, -360(%rbp)
	vmovaps	%ymm0, -336(%rbp)
	vmovaps	%ymm1, -304(%rbp)
	vmovaps	%ymm2, -272(%rbp)
	vmovaps	%ymm3, -240(%rbp)
	vmovaps	%ymm4, -208(%rbp)
	vmovaps	%ymm5, -176(%rbp)
	vmovaps	%ymm6, -144(%rbp)
	vmovaps	%ymm7, -112(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r10, %rax
	movq	%rax, -400(%rbp)
	leaq	-400(%rbp), %rbx
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	foo
	movq	%rbx, %r9
	movq	(%r9), %rcx
	movq	%rsp, %rbx
	movl	$16, %eax
	subq	$1, %rax
	addq	$47, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	8(%r9), %rax
	movq	16(%r9), %rdx
	movq	24(%r9), %rcx
	movq	32(%r9), %rsi
	movq	40(%r9), %rdi
	vmovdqu	64(%r9), %ymm0
	vmovdqu	96(%r9), %ymm1
	vmovdqu	128(%r9), %ymm2
	vmovdqu	160(%r9), %ymm3
	vmovdqu	192(%r9), %ymm4
	vmovdqu	224(%r9), %ymm5
	vmovdqu	256(%r9), %ymm6
	vmovdqu	288(%r9), %ymm7
	movq	320(%r9), %r8
	movq	328(%r9), %r9
	movl	$7, %eax
	call	foo
	movq	%rax, -528(%rbp)
	movq	%rdx, -520(%rbp)
	movq	%rsi, -512(%rbp)
	movq	%rdi, -504(%rbp)
	fstpt	-496(%rbp)
	fstpt	-480(%rbp)
	vmovaps	%ymm0, -464(%rbp)
	vmovaps	%ymm1, -432(%rbp)
	movq	%rbx, %rsp
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
	.size	bar, .-bar
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, %edi
	call	bar
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits