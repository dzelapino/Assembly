section .text
 extern printf
 global main

main:
 finit
 call checkCircle
 call printSol
 mov eax, 1
 int 0x80
 
checkCircle:
 fld dword[promien]
 fmul ST0
 fldpi 
 fmul ST1 ; ST0 = 314.567
 fcomp dword[oczekiwany]
 FSTSW AX
 SAHF
 ja wieksze
 jmp mniejsze

wieksze:
 mov eax, 1
 ret
 
mniejsze:
 mov eax, 0
 ret
 
 
printSol:
 push eax
 push sol
 call printf
 add esp, 8
 ret

section .data
 sol: db "Wynik: %d", 10, 0
 promien dd 10.00
 oczekiwany dd 300.00
