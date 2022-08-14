%include "io64.inc"
section .data
tofind dq 60
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging

    mov rax, 0
    mov rbx, 1
    mov rdx, 1
    jmp bonifacy
    
bonifacy:
    mov rcx, rdx
    sub rcx, qword[tofind]
    jnz helper
    jz end
    
helper:
    mov rcx, rbx
    add rbx, rax
    mov rax, rcx
    inc rdx
    jmp bonifacy
    
    
end:
    xor rax, rax
    ret