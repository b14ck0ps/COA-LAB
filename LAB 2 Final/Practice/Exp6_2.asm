
.MODEL SMALL
.STACK 100H
.DATA
.CODE
;program to find absolute value of a number
MAIN PROC 

    ;test data
    MOV AX , -2

    CMP AX, 0
    JNL END_IF
    NEG AX
    
END_IF:
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN
