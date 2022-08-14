%include "io64.inc"

section .data
array dq 1, 2, 3, 4, 5, 6
arraylen equ ($ - array) / 8
truelen equ ($ - array) - 8
; 0 <-> 32
; 0 8 16 24 32
; rax 0
; rbx max
; rax + 8
; rbx - 8
; 0 8 16 24 32 40 -> 8 32 -> 16 24
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rax, arraylen
    mov rdx, 2
    idiv rdx
    mov rdi, rax
    
    mov rax, 0
    mov rbx, truelen 
    jmp reverse
    
reverse:
    mov rcx, qword[array + rax]
    mov rdx, qword[array + rbx]
    mov qword[array + rax], rdx
    mov qword[array + rbx], rcx
    add rax, 8
    sub rbx, 8
    mov rcx, rax
    mov rdx, rbx
    sub rcx, rdx
    jnz reverse
    jz end
    
end:
    xor rax, rax
    ret