%include "io64.inc"

section .data



section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rax, 0
    
WLOOP:

    inc rax
    cmp rax, 3
    
    jz END
    jnz WLOOP
    
END:    
    xor rax, rax
    ret