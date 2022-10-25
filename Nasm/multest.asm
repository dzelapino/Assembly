%include "io64.inc"

section .data



section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    mov rax, 3
    mov rcx, 8
    imul rcx
    
    xor rax, rax
    ret