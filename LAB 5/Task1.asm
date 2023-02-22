.MODEL SMALL
.STACK 100h
.DATA

.CODE

; task 1
; If AL > 0 then BX = -1, else BX = 0
MAIN PROC
    MOV AL, 5
    CMP AL, 0
    JG THEN_
    JMP Exit

    THEN_:
    MOV BX, -1

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
