section .text
 extern printf
 global main

main:
 call countAtLeastTen
 call printSol
 mov eax, 1
 int 0x80
 
countAtLeastTen:
    mov eax, 3729583
    mov ebx, 16
    mov ecx, 0
    jmp division
    
division:
    xor edx, edx
    div ebx
    
    cmp eax, 0
    jz end
    cmp edx, 9
    jg foundGreater
    jmp division
    
foundGreater:
    inc ecx
    jmp division
    
end:    
    mov eax, ecx
    ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
