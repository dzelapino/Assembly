%include "io64.inc"

section .bss
userinput: RESQ 1

section .data
factorial dq 20

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rdx, userinput
    mov rax, 1
    mov rbx, 1
    mov rcx, 1
    jmp while
    
while:
        sub rcx, qword[factorial]
        jz sucess
        jnz whilehelper
    
whilehelper:
    inc rbx
    imul rbx
    mov rcx, rbx
    jmp while

sucess:
    
    xor rax, rax
    ret