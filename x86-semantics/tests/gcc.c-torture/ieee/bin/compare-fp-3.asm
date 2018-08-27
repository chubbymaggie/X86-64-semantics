	.file	"compare-fp-3.c"
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
	.globl	test1
	.type	test1, @function
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L50
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L48
	jmp	.L50
.L48:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L49
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L49
	jmp	.L50
.L49:
	movl	$0, %eax
	call	link_error0
.L50:
	nop
	leave
	ret
	.size	test1, .-test1
	.globl	test2
	.type	test2, @function
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L55
	jmp	.L57
.L55:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L56
	jmp	.L57
.L56:
	movl	$0, %eax
	call	link_error0
.L57:
	nop
	leave
	ret
	.size	test2, .-test2
	.globl	test3
	.type	test3, @function
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L62
	jmp	.L64
.L62:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L63
	jmp	.L64
.L63:
	movl	$0, %eax
	call	link_error0
.L64:
	nop
	leave
	ret
	.size	test3, .-test3
	.globl	test4
	.type	test4, @function
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L68
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L69
.L68:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L69
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L69
	movl	$0, %eax
	call	link_error1
.L69:
	nop
	leave
	ret
	.size	test4, .-test4
	.globl	test5
	.type	test5, @function
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L72
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnb	.L72
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L72
	movl	$0, %eax
	call	link_error1
.L72:
	nop
	leave
	ret
	.size	test5, .-test5
	.globl	test6
	.type	test6, @function
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L75
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jnb	.L75
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L75
	movl	$0, %eax
	call	link_error1
.L75:
	nop
	leave
	ret
	.size	test6, .-test6
	.globl	test7
	.type	test7, @function
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L78
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L78
	movl	$0, %eax
	call	link_error1
.L78:
	nop
	leave
	ret
	.size	test7, .-test7
	.globl	all_tests
	.type	all_tests, @function
all_tests:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	test1
	vmovss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	test2
	vmovss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	test3
	vmovss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	test4
	vmovss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	test5
	vmovss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	test6
	vmovss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	test7
	nop
	leave
	ret
	.size	all_tests, .-all_tests
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	all_tests
	vmovss	.LC1(%rip), %xmm1
	vmovss	.LC2(%rip), %xmm0
	call	all_tests
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	all_tests
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.globl	link_error0
	.type	link_error0, @function
link_error0:
	pushq	%rbp
	movq	%rsp, %rbp
	nop
	popq	%rbp
	ret
	.size	link_error0, .-link_error0
	.globl	link_error1
	.type	link_error1, @function
link_error1:
	pushq	%rbp
	movq	%rsp, %rbp
	nop
	popq	%rbp
	ret
	.size	link_error1, .-link_error1
	.section	.rodata
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1077936128
	.align 4
.LC4:
	.long	1082130432
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits