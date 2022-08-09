%include "io64.inc"

section .text

global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging  
    mov rax, 10
    sub rax, 2
    jnz notzero
    mov rcx, 30
    jz sucess
                      
notzero:
    sub rax, 2
    jnz notzero
    mov rdx, 30
    jz sucess

sucess:
    mov rbx, 30
    xor rax, rax
    ret