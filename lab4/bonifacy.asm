section .text
 extern printf
 global main

main:
 call bonifacystart
 call printSol
 mov eax, 1
 int 0x80
 
bonifacystart: 
    mov eax, 0
    mov ebx, 1
    mov edx, 1
    jmp bonifacy
    
bonifacy:
    mov ecx, edx
    sub ecx, dword [tofind]
    jnz helper
    jz end
    
helper:
    mov ecx, ebx
    add ebx, eax
    mov eax, ecx
    inc edx
    jmp bonifacy
    
end:    
    mov eax, ebx
    ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 4
 pop eax
 ret
	
section .data
 tofind: dd 11
 msg:  db "Wynik: %d", 10, 0
