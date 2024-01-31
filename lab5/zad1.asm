section .text
 extern printf
 global main

main:
 push dword str
 call length
 call printSol
 add esp, 4
 mov eax, 1
 int 0x80
 
length:
    push ebp
    mov ebp, esp
    xor eax, eax
    mov edx, dword[ebp+8]
iterate:
 cmp byte[edx], 0
 jz end
 inc eax
 inc edx
 jmp iterate
 
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
 str:  db "Ala ma kota", 0
