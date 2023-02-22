.MODEL SMALL
.STACK 100h
.DATA

.CODE

; task 2
; if Al < 0 then put FFh in AH
;else put 0 in AH
MAIN PROC
    MOV AL, 5
    CMP AL, 0
    JG THEN_
    MOV AH, 0 ; else
    JMP Exit

    ;if true
    THEN_:
    MOV AH, 0xFFh

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
