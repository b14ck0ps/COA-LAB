.MODEL SMALL
.STACK 100H
.DATA
.CODE
;program to check if AX (> < 0) BX and CX
MAIN PROC 
    ;test data
    MOV AX, 40
    MOV BX, 20
    MOV CX, 30  
    
    CMP AX, BX
    JE THEN_1
    JG ELSE_1

    ;if AX < BX
    THEN_1:
        MOV AX, 0
        JMP RETURN_TO_DOS
    ELSE_1:
        CMP BX , CX
        JE THEN_2
        JG ELSE_2
    THEN_2:
        MOV BX, 0
        JMP RETURN_TO_DOS
    ELSE_2:
        MOV CX, 0
        JMP RETURN_TO_DOS

    
    RETURN_TO_DOS: 
        MOV AH, 4CH 
        INT 21H     
    MAIN ENDP
END MAIN
