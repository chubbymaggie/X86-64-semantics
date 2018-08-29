    .text
    .globl	strchr
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
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L8
L9:
    addq	$1, -8(%rbp)
L8:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
    movq	-8(%rbp), %rax
    popq	%rbp
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
L12:
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
    jne	L12
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
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
    .globl	memcmp
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
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
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
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .comm	save_ret1,48,32
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	8(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    call	dummy
    movq	8(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	8(%rbp), %rax
    movq	%rax, -8(%rbp)
    call	dummy
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	test4a
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L53
    call	__stack_chk_fail
L53:
    leave
    ret
    .globl	test4a
test4a:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	0(%rbp), %rax
    movq	8(%rax), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	test5a
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L58
    call	__stack_chk_fail
L58:
    leave
    ret
    .globl	test5a
test5a:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    call	dummy
    movq	0(%rbp), %rax
    movq	8(%rax), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	test6a
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L63
    call	__stack_chk_fail
L63:
    leave
    ret
    .globl	test6a
test6a:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    movq	0(%rbp), %rax
    movq	8(%rax), %rax
    movq	%rax, -8(%rbp)
    call	dummy
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	func1
    .data
func1:
    .quad	test1
    .quad	test2
    .quad	test3
    .quad	test4
    .quad	test5
    .quad	test6
    .text
    .globl	call_func1
call_func1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    movq	func1(,%rax,8), %rax
    call	%rax
    movq	%rax, %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	%rdx, save_ret1(,%rax,8)
    nop
    leave
    ret
    .comm	ret_addr,8,8
    .comm	save_ret2,48,32
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	8(%rbp), %rax
    movq	%rax, ret_addr(%rip)
    nop
    popq	%rbp
    ret
    .globl	test8
test8:
    pushq	%rbp
    movq	%rsp, %rbp
    call	dummy
    movq	8(%rbp), %rax
    movq	%rax, ret_addr(%rip)
    nop
    popq	%rbp
    ret
    .globl	test9
test9:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	8(%rbp), %rax
    movq	%rax, ret_addr(%rip)
    call	dummy
    nop
    popq	%rbp
    ret
    .globl	test10
test10:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %ecx
    movl	$0, %edx
    divq	%rcx
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	test10a
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L74
    call	__stack_chk_fail
L74:
    leave
    ret
    .globl	test10a
test10a:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	0(%rbp), %rax
    movq	8(%rax), %rax
    movq	%rax, ret_addr(%rip)
    nop
    popq	%rbp
    ret
    .globl	test11
test11:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %ecx
    movl	$0, %edx
    divq	%rcx
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	test11a
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L78
    call	__stack_chk_fail
L78:
    leave
    ret
    .globl	test11a
test11a:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    call	dummy
    movq	0(%rbp), %rax
    movq	8(%rax), %rax
    movq	%rax, ret_addr(%rip)
    nop
    leave
    ret
    .globl	test12
test12:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %ecx
    movl	$0, %edx
    divq	%rcx
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	test12a
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L82
    call	__stack_chk_fail
L82:
    leave
    ret
    .globl	test12a
test12a:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	0(%rbp), %rax
    movq	8(%rax), %rax
    movq	%rax, ret_addr(%rip)
    call	dummy
    nop
    leave
    ret
    .globl	dummy
dummy:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$16, %eax
    subq	$1, %rax
    addq	$35, %rax
    movl	$16, %esi
    movl	$0, %edx
    divq	%rsi
    imulq	$16, %rax, %rax
    subq	%rax, %rsp
    movq	%rsp, %rax
    addq	$31, %rax
    shrq	$5, %rax
    salq	$5, %rax
    movq	%rax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L87
    call	__stack_chk_fail
L87:
    leave
    ret
    .globl	func2
    .data
func2:
    .quad	test7
    .quad	test8
    .quad	test9
    .quad	test10
    .quad	test11
    .quad	test12
    .text
    .globl	call_func2
call_func2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    movq	func2(,%rax,8), %rax
    call	%rax
    movq	ret_addr(%rip), %rdx
    movl	-4(%rbp), %eax
    cltq
    movq	%rdx, save_ret2(,%rax,8)
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, -4(%rbp)
    jmp	L90
L91:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	call_func1
    addl	$1, -4(%rbp)
L90:
    cmpl	$5, -4(%rbp)
    jle	L91
    movq	save_ret1(%rip), %rdx
    movq	save_ret1 + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L92
    movq	save_ret1 + 8(%rip), %rdx
    movq	save_ret1 + 16(%rip), %rax
    cmpq	%rax, %rdx
    je	L93
L92:
    call	abort
L93:
    movq	save_ret1 + 24(%rip), %rdx
    movq	save_ret1 + 32(%rip), %rax
    cmpq	%rax, %rdx
    jne	L94
    movq	save_ret1 + 32(%rip), %rdx
    movq	save_ret1 + 40(%rip), %rax
    cmpq	%rax, %rdx
    je	L95
L94:
    call	abort
L95:
    movq	save_ret1 + 24(%rip), %rax
    testq	%rax, %rax
    je	L96
    movq	save_ret1(%rip), %rdx
    movq	save_ret1 + 24(%rip), %rax
    cmpq	%rax, %rdx
    je	L96
    call	abort
L96:
    movl	$0, -4(%rbp)
    jmp	L97
L98:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	call_func2
    addl	$1, -4(%rbp)
L97:
    cmpl	$5, -4(%rbp)
    jle	L98
    movq	save_ret2(%rip), %rdx
    movq	save_ret2 + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L99
    movq	save_ret2 + 8(%rip), %rdx
    movq	save_ret2 + 16(%rip), %rax
    cmpq	%rax, %rdx
    je	L100
L99:
    call	abort
L100:
    movq	save_ret2 + 24(%rip), %rdx
    movq	save_ret2 + 32(%rip), %rax
    cmpq	%rax, %rdx
    jne	L101
    movq	save_ret2 + 32(%rip), %rdx
    movq	save_ret2 + 40(%rip), %rax
    cmpq	%rax, %rdx
    je	L102
L101:
    call	abort
L102:
    movq	save_ret2 + 24(%rip), %rax
    testq	%rax, %rax
    je	L103
    movq	save_ret2(%rip), %rdx
    movq	save_ret2 + 24(%rip), %rax
    cmpq	%rax, %rdx
    je	L103
    call	abort
L103:
    movl	$0, %edi
    call	exit
