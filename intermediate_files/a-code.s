	.file	"code.c"
	.text
	.globl	multiply
	.type	multiply, @function
multiply:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L7:
	movl	$0, -8(%rbp)
	jmp	.L3
.L6:
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L4:
	cmpl	$1023, -4(%rbp)
	jle	.L5
	addl	$1, -8(%rbp)
.L3:
	cmpl	$1023, -8(%rbp)
	jle	.L6
	addl	$1, -12(%rbp)
.L2:
	cmpl	$1023, -12(%rbp)
	jle	.L7
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	multiply, .-multiply
	.section	.rodata
	.align 8
.LC1:
	.string	"Matrix multiplication time: %.6f seconds\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$8192, %edi
	call	malloc@PLT
	movq	%rax, -96(%rbp)
	movl	$8192, %edi
	call	malloc@PLT
	movq	%rax, -88(%rbp)
	movl	$8192, %edi
	call	malloc@PLT
	movq	%rax, -80(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L9
.L10:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4096, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4096, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %esi
	movl	$1024, %edi
	call	calloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -112(%rbp)
.L9:
	cmpl	$1023, -112(%rbp)
	jle	.L10
	movl	$0, -108(%rbp)
	jmp	.L11
.L14:
	movl	$0, -104(%rbp)
	jmp	.L12
.L13:
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-104(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$4096, (%rax)
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-104(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$1024, (%rax)
	addl	$1, -104(%rbp)
.L12:
	cmpl	$1023, -104(%rbp)
	jle	.L13
	addl	$1, -108(%rbp)
.L11:
	cmpl	$1023, -108(%rbp)
	jle	.L14
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	clock_gettime@PLT
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	multiply
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	clock_gettime@PLT
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	subq	%rdx, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	subq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, -100(%rbp)
	jmp	.L15
.L16:
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -100(%rbp)
.L15:
	cmpl	$1023, -100(%rbp)
	jle	.L16
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
