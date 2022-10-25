%include "io64.inc"
section .data
tofind dw 40
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging

    mov eax, 0
    mov ebx, 1
    mov edx, 1
    jmp bonifacy
    
bonifacy:
    mov ecx, edx
    sub ecx, dword[tofind]
    jnz helper
    jz end
    
helper:
    mov ecx, ebx
    add ebx, eax
    mov eax, ecx
    inc edx
    jmp bonifacy
    
    
end:
    xor rax, rax
    ret