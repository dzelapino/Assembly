section .text
 extern printf
 global main

;Zadanie 3. Napisz program, który sprawdzi czy pole trójkąta o podstawie równej 1764 i wysokości równej 352 (a = 1764, h = 352) jest mniejsze niż 300000.
;Sposób rozwiązania:

;    Wylicz pole trójkąta: P = (a · h)/2.
;    Sprawdź czy pole jest mniejsze niż 300000

;W celu sprawdzenia mniejszości wykorzystaj odpowiednią instrukcję skoku.
;Jeżeli pole jest mniejsze, jako wynik możesz przekazać liczbę 1, w przeciwnym razie możesz przekazać 0

main:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania: call checkTriangle
 ;wypisanie rozwiazania: call printSol
 call triangleArea
 call printSol
 mov eax, 1
 int 0x80
 
triangleArea:
    mov eax, 1764
    mov ebx, 362
    mul ebx
    xor edx, edx
    mov ebx, 2
    div ebx
    jmp checkTriangle
    ;wynik jest w eax 
 
checkTriangle:
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze EAX
 cmp eax, 300000
 js mniejsze
 jns wieksze
 ;ret

wieksze:
    mov eax, 0
    ret
    
mniejsze:
    mov eax, 1
    ret 
    
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
