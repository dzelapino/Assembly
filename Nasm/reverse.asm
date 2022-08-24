%include "io64.inc"

section .data
array dq 1, 2, 3, 4, 5, 6
arraylen equ ($ - array) / 8
truelen equ ($ - array) - 8
counter db 0
maxcounter db 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov ax, arraylen
    mov bl, 2
    div bl
    mov byte[maxcounter], al
    ;result al
    ;remainder ah
    
    mov rax, 0
    mov rbx, truelen 
    jmp countercheck
    
countercheck:
    mov ch, byte[maxcounter]
    cmp ch, byte[counter]   
    jle end 
    jg reverse
    
reverse:
    mov rcx, qword[array + rax]
    mov rdx, qword[array + rbx]
    mov qword[array + rax], rdx
    mov qword[array + rbx], rcx
    add rax, 8
    sub rbx, 8
    inc byte[counter]
    jmp countercheck
    
end:
    xor rax, rax
    ret