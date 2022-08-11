%include "io64.inc"

section .data

andvalue db 10010010b
orvalue dw 100010000111b
xorvalue dq 1001b
negvalue dd 1001b
secondnegvalue db 1000b
notvalue db 11110010b

section .text

global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging

    and byte[andvalue], 00001110b
    or word[orvalue], 000111000111b
    xor qword[xorvalue], 1100b
    neg dword[negvalue]
    neg byte[secondnegvalue]
    not byte[notvalue]
    
xor rax, rax
ret