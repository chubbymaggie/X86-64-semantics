	.file	"unsafe-fp-assoc-1.c"
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
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L15
.L17:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L17
.L16:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
	.size	strcmp, .-strcmp
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
	jmp	.L20
.L23:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L21
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L22
.L21:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L20:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movl	$0, %eax
.L22:
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
	nop
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
	nop
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
	jmp	.L27
.L28:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L27:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L28
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
	jmp	.L31
.L32:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L31:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L32
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
	nop
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
	jle	.L40
	cmpl	$122, -4(%rbp)
	jg	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	cmpl	$64, -4(%rbp)
	jle	.L42
	cmpl	$90, -4(%rbp)
	jg	.L42
	movl	$1, %eax
	jmp	.L41
.L42:
	cmpl	$47, -4(%rbp)
	jle	.L43
	cmpl	$57, -4(%rbp)
	jg	.L43
	movl	$1, %eax
	jmp	.L41
.L43:
	movl	$0, %eax
.L41:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.section	.rodata
	.align 8
	.type	twoTo52, @object
	.size	twoTo52, 8
twoTo52:
	.long	0
	.long	1127219200
	.text
	.globl	func
	.type	func, @function
func:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	-40(%rbp), %xmm0
	vmovsd	%xmm0, -16(%rbp)
	movl	-16(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -20(%rbp)
	cmpl	$1127219199, -20(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L53
	vmovsd	.LC0(%rip), %xmm1
	vmovsd	-40(%rbp), %xmm0
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	.LC0(%rip), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm2
	vmovapd	%xmm2, %xmm7
	vucomisd	-40(%rbp), %xmm2
	jp	.L50
	vmovapd	%xmm7, %xmm4
	vucomisd	-40(%rbp), %xmm4
	je	.L52
.L50:
	call	abort
.L52:
	vmovsd	-40(%rbp), %xmm0
	vmovsd	.LC1(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm5
	vmovsd	.LC0(%rip), %xmm0
	vsubsd	%xmm0, %xmm5, %xmm0
	vmovsd	.LC0(%rip), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm3
	vmovapd	%xmm3, %xmm7
	vmovsd	.LC0(%rip), %xmm1
	vmovsd	-40(%rbp), %xmm0
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	.LC0(%rip), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm3, %xmm0
	jp	.L53
	vmovapd	%xmm7, %xmm6
	vucomisd	%xmm6, %xmm0
	je	.L51
	jmp	.L53
.L51:
	call	abort
.L53:
	nop
	leave
	ret
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm0
	call	func
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1127219200
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits