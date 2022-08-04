%include "io64.inc"

section .data

testValue dq 20
testByte db 20

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rax, 30
    mov rbx, 50
    xchg rax, rbx
    add rax, qword[testValue]
    mov al, byte[testByte]
    mov cl, byte[testByte]
    xor rax, rax
    ret