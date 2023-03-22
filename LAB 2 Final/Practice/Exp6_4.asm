
.MODEL SMALL
.STACK 100H
.DATA
.CODE
;program to check if a number is positive, negative or zero
MAIN PROC 

    ;test data
    MOV AX , 0

    CMP AX, 0
    JL NEGATIVE
    JG POSITIVE
    JE ZERO


NEGATIVE:
    MOV BX, -1
    JMP EXIT

POSITIVE:
    MOV BX, 1
    JMP EXIT

ZERO:
    MOV BX, 0
    JMP EXIT
    
EXIT:
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN
