section .text
 extern printf
 global main

main:
 finit
 call rpn
 call printSol
 mov eax, 1
 int 0x80
 
rpn:
 fld dword[numone]
 fld dword[numtwo]
 fadd ST1
 fld dword[numthree]
 fld dword[numfour]
 fsub ST1
 fdiv ST1
 fld dword[numfive]
 fmul ST1
 ret
 
printSol:
 sub esp, 8
 fst qword [esp]
 push sol
 call printf
 add esp, 12
 ret

section .data ; 4,4 5,2 + 1,2 6,5 - / 3,8 *.
 sol: db "Wynik: %f", 10, 0
 numone dd 4.4
 numtwo dd 5.2
 numthree dd 1.2
 numfour dd 6.5
 numfive dd 3.8
