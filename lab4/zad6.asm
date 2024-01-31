section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 call countOnes
 call printSol
 mov eax, 1
 int 0x80
 
countOnes:
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze EAX
    mov eax, 3729583
    mov ebx, 2
    mov ecx, 0
    jmp getBinOnes
    
getBinOnes:
    xor edx, edx
    div ebx
    
    add ecx, edx
    cmp eax, 0
    jnz getBinOnes
    jz end
 
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
