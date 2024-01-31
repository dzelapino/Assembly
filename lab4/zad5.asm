section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 call primeNumber
 call printSol
 mov eax, 1
 int 0x80
 
primeNumber:
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze EAX
 mov ebx, 2
 jmp checkPrime
 ;ret
 
checkPrime:
    mov eax, 3729583
    cmp eax, ebx
    jz isPrime 
    xor edx, edx
    div ebx
    ;eedx ma reszte jesli edx zero jmp not prime
    cmp edx, 0
    jz notPrime
    inc ebx
    jmp checkPrime
 
isPrime:
    mov eax, 1
    ret
    
notPrime:
    mov eax, 0
    ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
