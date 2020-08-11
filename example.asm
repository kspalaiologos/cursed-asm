
.globl main
.data
.str:
    .string "cursed lol"
.text
main:
    subq $8, %rsp
    mov  esi, 1337
    movl $.str, %edi
    xor  eax, eax
    call printf
    xor  eax, eax
    addq $8, %rsp
    ret
