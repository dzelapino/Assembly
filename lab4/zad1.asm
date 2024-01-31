section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania np. sumowania: call sum
 ;wypisanie rozwiazania: call printSol
 call sum
 call printSol
 call diff
 call printSol
 call prod
 call printSol
 call quo
 call printSol
 call mod
 call printSol
 mov eax, 1
 int 0x80
 
sum:
 mov eax, 27
 mov ebx, 13
 add eax, ebx
 
 ret
 
diff:
 mov eax, 27
 mov ebx, 13
 sub eax, ebx
 ret

prod:
 ;Twoje rozwiazanie, wynik (iloczyn) umiesc w rejestrze EAX
 mov eax, 27
 mov ebx, 13
 mul ebx
 ret
 
quo:
 ;Twoje rozwiazanie, wynik (iloraz) umiesc w rejestrze EAX
 xor edx, edx
 mov eax, 27
 mov ebx, 13
 div ebx
 ret
 
mod:
 ;Twoje rozwiazanie, wynik (reszte z dzielenia) umiesc w EAX
 xor edx, edx
 mov eax, 27
 mov ebx, 13
 div ebx
 mov eax, edx
 ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
