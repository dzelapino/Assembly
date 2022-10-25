%include "io64.inc"

section .data
array dq 13, 31, 44, 31, 32, 11, 20
arraylen equ ($ - array) / 8
i dq 1
j dq 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging

    mov rdx, arraylen - 1
    mov rcx, j
    mov qword[j], rdx
    cmp rcx, rdx

    jle END
    jg REVERSE


REVERSE:
    mov rax, 2


    END:
    xor rax, rax
    ret