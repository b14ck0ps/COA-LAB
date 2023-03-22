
.MODEL SMALL
.STACK 100H
.DATA
.CODE
;Print the smaller of two characters
MAIN PROC 

    ;test data
    MOV AL , 'b'
    MOV BL , 'a'

    MOV AH , 02H
    CMP AL , BL
    JNBE ELSE_

    MOV DL , AL
    JMP DISPLAY_
ELSE_:
    MOV DL , BL

DISPLAY_:
    MOV AH , 02H
    INT 21H
    JMP EXIT


    
EXIT:
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN
