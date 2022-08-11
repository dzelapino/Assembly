%include "io64.inc"

section .data
counter db 0

section .text

global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging  
    mov rax, 35
    jmp notzero
    
notzero:
    add byte[counter], 1
    sub rax, 1
    jnz notzero
    mov rdx, 30
    jz sucess

sucess:
    sub rbx, 30
    xor rax, rax
    ret
    