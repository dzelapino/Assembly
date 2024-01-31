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
    mov edx, 3729583
    mov eax, 0
    jmp shift
    
shift:
    cmp edx, 0
    jz end
    shr edx, 1
    jnc shift
    inc eax
    jmp shift

end:
    ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
