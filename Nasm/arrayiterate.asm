%include "io64.inc"

section .data
iterator dq 0
array dq 102, 30, 14, 132, 1 , 10
arraylen equ ($ - array) / 8
; w quadword adresuje sie co 8

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rcx, 0
    mov rdx, arraylen - 1    
    jmp while
    
while:
    mov rax, qword[iterator]
    mov rbx, qword[array + rcx]
    add qword[iterator], 1
    add rcx, 8
    sub rax, rdx
    jnz while
    jz sucess

        
    
sucess:

    xor rax, rax
    ret