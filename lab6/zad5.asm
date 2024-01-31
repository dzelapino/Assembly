section	.data
 fileInName db 'input.txt', 0
 lenInName equ  $-fileInName
 fileOutName db 'output.txt', 0
 lenOutName equ  $-fileOutName

section .bss
 bufFileIn: resb 4
 bufFileOut: resb 4
 bufHelpAdr: resb 1

section .text
 global _start
 
_start:
 ;tutaj sprawdz poprawnosc
 ;wywolanie rozwiazania: call rewrite 
 ;przed wywolaniem podaj jako argumenty: push fileInName/push fileOutName
 int 0x80

rewrite:
 push ebp
 mov ebp, esp
 ;Twoje rozwiazanie
 ;odniesienie sie argumentu ze stosu: [ebp+8] [ebp+12]
 ;skorzytaj z odpowiednim miejscu z 
 ;call count (przed wywolaniem podaj argument na stos)
 ;call allocate (przed wywolaniem podaj argument na stos)
 ;call read (przed wywolaniem podaj trzy argument na stos)
 ;call write (przed wywolaniem podaj trzy argument na stos)
 pop ebp
 ret

count:
 push ebp
 mov ebp, esp
 ;odniesienie sie argumentu ze stosu: [ebp+8]
 ;Twoje rozwiazanie liczenia bajtów z pliku
 pop ebp
 ret

allocate:
 push ebp
 mov ebp, esp
 ;odniesienie sie argumentu ze stosu: [ebp+8]
 ;Twoje rozwiazanie alokacji pamieci
 pop ebp
 ret

read:
 push ebp
 mov ebp, esp
 ;odniesienie sie argumentu ze stosu: [ebp+8] [ebp+12] [ebp+16]
 ;Twoje rozwiazanie pobrania tekst
 pop ebp
 ret

write:
 push ebp
 mov ebp, esp
 ;odniesienie sie argumentu ze stosu: [ebp+8] [ebp+12] [ebp+16]
 ;Twoje rozwiazanie wpisania tekst
 pop ebp
 ret


