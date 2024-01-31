%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
      
    mov rdx, 173 ; 1010 1101
    mov rcx, 1 ; potega pozycji
    mov rbx, 0 ; akumulator
    mov rax, 0 ; wynik
    jmp START
    

START:
   
    cmp rcx, 16
    jz REVERTRCX
    
    shr rdx, 1
    jc SHIFTEDONE
    jnc MULRCX
    
SHIFTEDONE:
    ; dodaj do rbx <=  rcx
    add rbx, rcx
    jmp MULRCX
    
MULRCX:
    ; mnoz rcx * 2
    push rax
    push rbx
    push rdx
    xor rdx, rdx
    
    mov rax, 2
    mul rcx
    mov rcx, rax
        
    pop rdx
    pop rbx
    pop rax
    jmp START
    
REVERTRCX:
    mov rcx, 1
    cmp rbx, 9
    jg GREATER
    mov rbx, 0
    
    cmp rdx, 0
    jz END
    
    jmp START
               
GREATER:
    mov rbx, 0
    inc rax
    
    cmp rdx, 0
    jz END
    
    jmp START
    
END:
    xor rax, rax
    ret