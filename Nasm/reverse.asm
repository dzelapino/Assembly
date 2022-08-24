%include "io64.inc"

section .data
array dq 1, 2, 3, 4, 5, 6
arraylen equ ($ - array) / 8
truelen equ ($ - array) - 8
counter dw 0
maxcounter dw 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov ax, arraylen
    mov bl, 2
    div bl
    mov word[maxcounter], ax
    ;result al
    ;remainder ah
    
    mov rax, 0
    mov rbx, truelen 
    jmp countercheck
    
countercheck:
    mov cx, word[maxcounter]
    cmp cx, word[counter]   
    jle end 
    jg reverse
    
reverse:
    mov rcx, qword[array + rax]
    mov rdx, qword[array + rbx]
    mov qword[array + rax], rdx
    mov qword[array + rbx], rcx
    add rax, 8
    sub rbx, 8
    inc word[counter]
    jmp countercheck
    
end:
    xor rax, rax
    ret