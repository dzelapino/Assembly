section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania: call quadEqu
 ;przed wywolaniem rozwiazania podaj trzy argumenty na stos
 ;wypisanie rozwiazania: call checkSol
 ;przed wywolaniem rozwiazania ST0 powinno miec wartosc
 ;wypisanie informacji o braku rozwiazania: call printErr
 mov eax, 1
 int 0x80
 
quadEqu:
 push ebp
 mov ebp, esp
 ;odniesienie sie argumentu ze stosu: [ebp+8] [ebp+12] [ebp+16]
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze ST0
 pop ebp
 ret
 
checkSol:
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze EAX
 ret
 
printSol:
 sub esp, 8
 fst qword [esp]
 push msg
 call printf
 add esp, 12
 ret
 
printErr:
 push err
 call printf
 add esp, 4
 ret

section .data
 msg: db "Wynik: %f", 10, 0
 err: db "Brak rozwiazan", 10, 0

