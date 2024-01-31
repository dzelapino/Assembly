section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania: call convert
 ;przed wywolanie rozwiazania podaj argumentow na stos: push dword str/push dword len
 ;wypisanie rozwiazania: call printSol
 mov eax, 1
 int 0x80
 
convert:
 push ebp
 mov ebp, esp
 ;Twoje rozwiazanie, wynik umiesc w rejestrze EAX
 ;odniesienie sie argumentu ze stosu: [ebp+8] i [ebp+12]
 pop ebp
 ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %s", 10, 0
 str:  db "Ala ma kota"
 len: equ $-str
