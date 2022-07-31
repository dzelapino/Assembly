.386
.MODEL flat
.STACK 4096
.DATA
.CODE
start  PROC
		mov ah, 1h
        int 21h
        mov dl, al

        mov ah, 2h
        int 21h
start ENDP
END start