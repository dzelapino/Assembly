.386
.MODEL flat
.STACK 4096
.CODE
start  PROC
		MOV EAX,2
		ADD EAX,3
		RET
start ENDP
END start