section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania: call countWords
 ;przed wywolanie rozwiazania podaj argumentow na stos: push dword str/push dword len
 push dword str
 call countWords
 call printSol
 mov eax, 1
 int 0x80
 
countWords:
 push ebp
 mov ebp, esp
 xor eax, eax
 mov edx, dword[ebp+8]
 
iterate:
 cmp byte[edx], 0
 jz end
 cmp byte[edx], ' '
 jz inceax
 jnz iteraterest
 
inceax: 
    inc eax
    jmp iteraterest
 
iteraterest: 
 inc edx
 jmp iterate
 ret
 
end: 
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
 str:  db "Ala ma kota "
 len: equ $-str
