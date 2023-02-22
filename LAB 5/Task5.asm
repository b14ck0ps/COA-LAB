.MODEL SMALL
.STACK 100h
.DATA
.CODE
;task 5
;if (AX < BX) OR (BX < CX) then DX = 0
;else DX = 1
MAIN PROC
    MOV AX, 5
    MOV BX, 2
    MOV CX, 3

    ;if (AX < BX) OR (BX < CX)
    CMP AX, BX
    JL SET_DX_TO_ZERO
    CMP BX, CX
    JL SET_DX_TO_ZERO

    ; Else, set DX to 1
    MOV DX, 1
    JMP END_IF

SET_DX_TO_ZERO:
    MOV DX, 0

END_IF:
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
