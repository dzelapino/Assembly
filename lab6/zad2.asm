section .text
 extern printf
 global main

main:
 call checkCircle
 call printSol
 mov eax, 1
 int 0x80
 
checkCircle:
 push ebp
 mov ebp, esp
 finit
 push dword promien
 ;push dword porownywany
 ;mov ecx, dword[ebp+12]; promien
 fmul ST0
 FLDPI
 fmul ST0
 push dword porownywany
 FCOMPP
 ;mov edx, dword[ebp+8]; porownywany
 
 ;mov ecx, dword[ecx]
 ;mov edx, dword[edx]
 
 
 ;mov eax, ecx
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze EAX
 pop ebp
 fstsw ax
 sahf
 ret
 
printSol:
 push eax
 push sol
 call printf
 add esp, 8
 ret
	
section .data
 sol:  db "Wynik: %d", 10, 0
 promien: dd 10
 porownywany: dd 30
