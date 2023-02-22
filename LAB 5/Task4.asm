.MODEL SMALL
.STACK 100h
.DATA
.CODE
;if AX < BX then 
; if BX < CX then
; put 0 in AX
; else put 0 in BX
;end
MAIN PROC
    MOV AX, 1
    MOV BX, 2
    MOV CX, 3

    ; Check if AX < BX
    CMP AX, BX
    JG END_IF ; if AX > BX end 

    ; Check if BX < CX
    CMP CX, BX
    JG SET_AX_TO_ZERO

    ; BX is less than CX, so put 0 in BX
    MOV BX, 0
    JMP END_IF

SET_AX_TO_ZERO:
    ; BX is not less than CX, so put 0 in AX
    MOV AX, 0

END_IF:
    ; Exit the program
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
