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
float_min1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-8(%rbp), %xmm3
	vminss	-4(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
float_min2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-4(%rbp), %xmm3
	vminss	-8(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
float_max1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-8(%rbp), %xmm3
	vmaxss	-4(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
float_max2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	vmovss	-4(%rbp), %xmm3
	vmaxss	-8(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
double_min1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-16(%rbp), %xmm3
	vminsd	-8(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
double_min2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-8(%rbp), %xmm3
	vminsd	-16(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
double_max1:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-16(%rbp), %xmm3
	vmaxsd	-8(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
double_max2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-8(%rbp), %xmm3
	vmaxsd	-16(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	LC0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L170
	call	abort
L170:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L171
	call	abort
L171:
	vmovss	LC2(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L172
	call	abort
L172:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L173
	call	abort
L173:
	vmovss	LC2(%rip), %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L174
	call	abort
L174:
	vmovss	LC0(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_min1
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L175
	call	abort
L175:
	vmovss	LC0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L176
	call	abort
L176:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L177
	call	abort
L177:
	vmovss	LC2(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L178
	call	abort
L178:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L179
	call	abort
L179:
	vmovss	LC2(%rip), %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L180
	call	abort
L180:
	vmovss	LC0(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_max1
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L181
	call	abort
L181:
	vmovss	LC0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L182
	call	abort
L182:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L183
	call	abort
L183:
	vmovss	LC2(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L184
	call	abort
L184:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L185
	call	abort
L185:
	vmovss	LC2(%rip), %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L186
	call	abort
L186:
	vmovss	LC0(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_min2
	vmovd	%xmm0, %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L187
	call	abort
L187:
	vmovss	LC0(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L188
	call	abort
L188:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L189
	call	abort
L189:
	vmovss	LC2(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L190
	call	abort
L190:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vcomiss	%xmm3, %xmm2
	je	L191
	call	abort
L191:
	vmovss	LC2(%rip), %xmm1
	vmovss	LC0(%rip), %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vcomiss	%xmm5, %xmm4
	je	L192
	call	abort
L192:
	vmovss	LC0(%rip), %xmm1
	vmovss	LC2(%rip), %xmm0
	call	float_max2
	vmovd	%xmm0, %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vcomiss	%xmm7, %xmm6
	je	L193
	call	abort
L193:
	vmovsd	LC3(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L194
	call	abort
L194:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L195
	call	abort
L195:
	vmovsd	LC5(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L196
	call	abort
L196:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L197
	call	abort
L197:
	vmovsd	LC5(%rip), %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L198
	call	abort
L198:
	vmovsd	LC3(%rip), %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_min1
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L199
	call	abort
L199:
	vmovsd	LC3(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L200
	call	abort
L200:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L201
	call	abort
L201:
	vmovsd	LC5(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L202
	call	abort
L202:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L203
	call	abort
L203:
	vmovsd	LC5(%rip), %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L204
	call	abort
L204:
	vmovsd	LC3(%rip), %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_max1
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L205
	call	abort
L205:
	vmovsd	LC3(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L206
	call	abort
L206:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L207
	call	abort
L207:
	vmovsd	LC5(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L208
	call	abort
L208:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L209
	call	abort
L209:
	vmovsd	LC5(%rip), %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L210
	call	abort
L210:
	vmovsd	LC3(%rip), %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_min2
	vmovq	%xmm0, %rdx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L211
	call	abort
L211:
	vmovsd	LC3(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L212
	call	abort
L212:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movl	$0, %eax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L213
	call	abort
L213:
	vmovsd	LC5(%rip), %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L214
	call	abort
L214:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vcomisd	%xmm3, %xmm2
	je	L215
	call	abort
L215:
	vmovsd	LC5(%rip), %xmm1
	vmovsd	LC3(%rip), %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vcomisd	%xmm5, %xmm4
	je	L216
	call	abort
L216:
	vmovsd	LC3(%rip), %xmm1
	vmovsd	LC5(%rip), %xmm0
	call	double_max2
	vmovq	%xmm0, %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vcomisd	%xmm7, %xmm6
	je	L217
	call	abort
L217:
	movl	$0, %edi
	call	exit
LC0:
	.long	3212836864
LC1:
	.long	0
LC2:
	.long	1065353216
LC3:
	.long	0
	.long	-1074790400
LC5:
	.long	0
	.long	1072693248