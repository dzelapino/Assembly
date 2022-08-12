%include "io64.inc"

section .data
iterator dq 0
endindex dq 0
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
    mov rax, qword[array + rcx]  ; rax = 0
    add qword[iterator], 1
    add rcx, 8
    mov rbx, qword[array + rcx] ; rbx = 8
    sub rax, rbx
    jg swap
    jle whileback
    
swap:
    add rax, rbx
    mov qword[array + rcx], rax
    sub rcx, 8
    mov qword[array + rcx], rbx
    add rcx, 8
    jmp whileback    
    
whileback:
    mov rax, qword[iterator]
    sub rax, rdx
    jnz while
    jz secondwhile

        
    
secondwhile:
    mov rax, arraylen - 1
    mov rbx, 0
    mov rcx, 0
    mov qword[iterator], 0
    add qword[endindex], 1
    sub rax, qword[endindex]
    jnz while
    jz sucess
    
    
sucess:        
    xor rax, rax
    ret