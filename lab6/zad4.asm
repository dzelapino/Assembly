section .data
 com1: db "Podaj imie: "
 lenCom1: equ $-com1
 com2: db "Twoje imie: "
 lenCom2: equ $-com2

section .text
 global _start

_start:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania: call yourFirstName
 mov eax, 1
 int 0x80


yourFirstName:
 ;Twoje rozwiazanie
 ;skorzytaj w odpowiednim miejscu z 
 ;call allocate
 ;call setFirstName (przed wywolaniem podaj argument na stos)
 ;call getFirstName (przed wywolaniem podaj argument na stos)
 ret

allocate:
 ;Twoje rozwiazanie alokacji pamieci
 ret

setFirstName:
 push ebp
 mov ebp, esp
 ;odniesienie sie argumentu ze stosu: [ebp+8]
 ;Twoje rozwiazanie pobrania imienia
 pop ebp
 ret

getFirstName:
 push ebp
 mov ebp, esp
 ;odniesienie sie argumentu ze stosu: [ebp+8]
 ;Twoje rozwiazanie wyswietlenie imienia
 pop ebp
 ret




