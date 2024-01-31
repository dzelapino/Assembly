section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania: call prodEven
 ;przed wywolaniem rozwiazania podaj argumenty na stos: push dword str/push dword len
 ;wypisanie rozwiazania (pojedynczej komorki): call printSol
 mov eax, 1
 int 0x80
 
prodEven:
 push ebp
 mov ebp, esp
 ;Twoje rozwiazanie, wynik umiesc w rejestrze EAX
 ;odniesienie sie argumentow ze stosu: [ebp+8] i [ebp+12]
 pop ebp
 ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
 arr:  dw 133, 35, 12, 34, 154, 123
 len: equ ($-arr)/2
