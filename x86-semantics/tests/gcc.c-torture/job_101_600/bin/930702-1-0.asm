strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
fp:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	jp	L10
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC0(%rip), %xmm2
	jne	L10
	cmpl	$11, -12(%rbp)
	je	L11
L10:
	call	abort
L11:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$fp, -8(%rbp)
	movabsq	$4629841154425225216, %rax
	movl	$11, %edi
	vmovq	%rax, %xmm0
	call	fp
	movabsq	$4629841154425225216, %rax
	movq	-8(%rbp), %rdx
	movl	$11, %edi
	vmovq	%rax, %xmm0
	call	*%rdx
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1077968896