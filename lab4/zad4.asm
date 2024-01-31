section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 call stringNumbers
 call printSol
 mov eax, 1
 int 0x80
 
stringNumbers:
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze EAX
 ;Napisz program, który wyliczy wartość 1 + 2 + 3 + ... + 124 + 125 (należy w "pętli" dodać odpowiednie wartości).
 mov eax, 0
 mov ebx, 1
 mov edx, 125
 cmp ebx, edx
 jmp numbersLoop
 
numbersLoop:
    add eax, ebx
    cmp ebx, edx
    jz numbersEnd
    inc ebx
    jmp numbersLoop

numbersEnd:  
 ret
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
