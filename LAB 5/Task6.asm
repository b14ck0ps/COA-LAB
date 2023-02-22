.MODEL SMALL
.STACK 100h
.DATA
.CODE
;if AX < BX then put 0 in AX
;else if BX < CX then put 0 in BX
;else put 0 in cx
;end if
MAIN PROC
    MOV AX, 1
    MOV BX, 2
    MOV CX, 3

    ; Check if AX < BX
    CMP AX, BX
    JL SET_AX_TO_ZERO

    ; Check if BX < CX
    CMP BX, CX
    JL SET_BX_TO_ZERO

    ; else
    MOV CX, 0
    JMP END_IF

SET_AX_TO_ZERO:
    MOV AX, 0
    JMP END_IF

SET_BX_TO_ZERO:
    MOV BX, 0

END_IF:
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
