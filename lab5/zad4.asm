section .text
 extern printf
 global main

main:
 push dword arr
 push dword len
 call prodEven
 call printSol
 mov eax, 1
 int 0x80
 
prodEven:
 push ebp
 mov ebp, esp
 
 mov edx, dword[ebp+8]; array
 mov ecx, dword[ebp+12]; len
 push edx
 push ebx
 xor edx, edx
 
 mov eax, ecx
 mov ebx, 2
 div ebx
 
 mov ecx, eax
 
 pop ebx
 pop edx
 
 ;len/2 ilosc razy
 push ebx
 mov ebx, 0
 mov eax, 0
 jmp iterate
 
iterate: 
 cmp ebx, ecx
 jz end
 push ecx
 mov ecx, byte[edx]
 add eax, ecx
 pop ecx
 add edx, 2
 inc ecx
 jmp iterate
 
 
end: 
 pop ebx
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
 arr:  db 64, 35, 12, 34, 31, 75
 len: equ $-arr
