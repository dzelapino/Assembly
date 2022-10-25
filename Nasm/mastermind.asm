%include "io64.inc"

section .data
iterator dq 0
whiteiterator dq 0
whitelocal dq 0
result dq 1, 4, 5, 2
resultlen equ ($ - result) / 8
guessed dq 3, 2, 1, 2
guessedlen equ ($ - guessed) / 8
blacks dq 0
whites dq 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    mov rax, resultlen
    mov rbx, guessedlen
    mov rcx, 0
    cmp rax, rbx
    jz CHECKBLACK
    jnz END
    
    
WHITEWRAPPER:
    mov rax, qword[whiteiterator]
    mov rbx, resultlen
    cmp rax, rbx
    jnz PREPAREWHITE
    jz END
  
      
PREPAREWHITE:
    mov rax, qword[whiteiterator]
    mov rbx, 8
    imul rbx
    mov rbx, qword[guessed + rax]
    mov qword[whitelocal], 0
    jmp ITERATEWHITES
    ; porownywanie rbx z kazdym z tablicy az znajdzie
    
ITERATEWHITES: 
    mov rcx, qword[result + rax]
    cmp rbx, rcx
    jz WHITEFOUND
    inc qword[whitelocal],
    mov rax, qword[whitelocal]
    mov rdx, resultlen
    cmp rax, rdx
    jz WHITENOTFOUND
    mov rdx, 8
    imul rdx
    jmp ITERATEWHITES
    
WHITEFOUND:
    inc qword[whites]
    inc qword[whiteiterator]
    jmp WHITEWRAPPER

WHITENOTFOUND:
    inc qword[whiteiterator]
    jmp WHITEWRAPPER
    

CHECKBLACK:
    mov rdx, resultlen   
    mov rax, qword[guessed + rcx]
    mov rbx, qword[result + rcx]
    add rcx, 8
    cmp rax, rbx
    jz BLACKFOUND
    jnz CHECKBLACKREST

BLACKFOUND:
    inc qword[blacks]
    jmp CHECKBLACKREST

CHECKBLACKREST:
    inc qword[iterator]
    cmp rdx, qword[iterator]
    jnz CHECKBLACK
    jz WHITEWRAPPER
    
         
END:
    mov rax, qword[whites]
    mov rbx, qword[blacks]
    sub rax, rbx
    mov qword[whites], rax
    xor rax, rax
    ret