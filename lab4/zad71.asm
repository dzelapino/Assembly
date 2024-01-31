section .text
 extern printf
 global main

main:
 ;tutaj sprawdz poprawnosc
 call countOnes
 call printSol
 mov eax, 1
 int 0x80
 
countOnes:
 ;Twoje rozwiazanie, wynik nalezy umiescic w rejestrze EAX
    mov edx, 3729583
    mov ecx, 1 ; potega pozycji
    mov ebx, 0 ; akumulator
    mov eax, 0 ; wynik
    jmp START

START:
   
    cmp ecx, 16
    jz REVERTRCX
    
    shr edx, 1
    jc SHIFTEDONE
    jnc MULRCX
    
SHIFTEDONE:
    ; dodaj do ebx <=  ecx
    add ebx, ecx
    jmp MULRCX
    
MULRCX:
    ; mnoz ecx * 2
    push eax
    push ebx
    push edx
    xor edx, edx
    
    mov eax, 2
    mul ecx
    mov ecx, eax
        
    pop edx
    pop ebx
    pop eax
    jmp START
    
REVERTRCX:
    mov ecx, 1
    cmp ebx, 9
    jg GREATER
    mov ebx, 0
    
    cmp edx, 0
    jz END
    
    jmp START
               
GREATER:
    mov ebx, 0
    inc eax
    
    cmp edx, 0
    jz END
    
    jmp START
    
END:
    ret   
 
printSol:
 push eax
 push msg
 call printf
 add esp, 8
 ret
	
section .data
 msg:  db "Wynik: %d", 10, 0
