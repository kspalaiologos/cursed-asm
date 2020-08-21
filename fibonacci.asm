 .text
 .globl _start
_start:
    pushq %r12
    mov rax, QWORD PTR m.2[rip]
    leaq z.1(%rip), %r10
    push rbp
    orl $-1, %r12d
    xor r8d, r8d
    pushq %rbx
    mov BYTE PTR 4[rax], 1
    movb $1, 2(%rax)
    lea rbx, a.0[rip]
    movl $1, %r9d
    mov ebp, 1
.L2:
    mov rax, QWORD PTR m.2[rip]
    cmpb $0, 4(%rax)
    je .L13
    leaq -3(%rax), %rdx
    mov al, BYTE PTR 3[rax]
    movq %rdx, m.2(%rip)
    add eax, 48
    movb %al, z.1(%rip)
    mov edi, r8d
    movl %r9d, %eax
    mov rsi, r10
    movq %rbp, %rdx
    syscall
    jmp .L2
.L13:
    movl %r8d, %eax
    mov ecx, r12d
    movq %rbx, %rdi
    mov rsi, rbx
    repne scasb
    mov eax, r9d
    movslq %ecx, %rdx
    mov edi, r8d
    syscall
    mov BYTE PTR z.1[rip], 10
    movl %r9d, %eax
    mov rsi, r10
    movq %rbp, %rdx
    syscall
    movq m.2(%rip), %rax
    xor edx, edx
.L4:
    mov cl, BYTE PTR 7[rax]
    testb %cl, %cl
    je .L14
    movb 6(%rax), %dl
    lea ecx, -1[rdx+rcx]
    addb 5(%rax), %dl
    mov BYTE PTR 7[rax], cl
    movb %dl, 5(%rax)
    mov BYTE PTR 6[rax], dl
    cmpb $9, %dl
    jbe .L5
    subl $10, %edx
    inc BYTE PTR 8[rax]
    movb $1, 10(%rax)
    mov BYTE PTR 6[rax], dl
.L5:
    mov BYTE PTR 5[rax], cl
    movb $1, 7(%rax)
    mov dl, 1
    addq $3, %rax
    jmp .L4
.L14:
    test dl, dl
    je .L2
    mov QWORD PTR m.2[rip], rax
    jmp .L2
    .local a.0
    .comm a.0,9000,32
    .local z.1
    .comm z.1,1,1
    .section .data.rel.local,"aw"
m.2:
    .quad a.0
