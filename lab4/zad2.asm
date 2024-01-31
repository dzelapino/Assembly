section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania: call rpn
 ;wypisanie rozwiazania: call printSol
 call rpn
 call printSol
 mov eax, 1
 int 0x80
 
rpn:
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze EAX
 ; 	6 2 - 3 7 + +.
 
 push 6
 push 2
 pop ebx
 pop eax
 sub eax, ebx
 push 3
 push 7
 pop edx
 pop ecx
 add ecx, edx
 add eax, ecx
 ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
