%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
     ; div 8-bit   ;write your code here   ah   al  ->   al - cale     ah - reszta
    mov ax,20
    mov bl,3
    div bl
    
    ; div 16-bit     dx   ax  ->   ax - cale     dx - reszta
    mov dx, 20
    mov ax, 10
    mov bx, 30
    div bx
    
    ; div 32-bit    edx  eax  ->  eax    edx
    xor edx,edx
    mov eax,203
    mov ebx,5
    div ebx
    
    ; divide overflow
    ; mov ax,600
    ; mov bl,2
    ; div bl
    xor rax, rax
    ret