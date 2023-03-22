.MODEL SMALL
.STACK 100H
.DATA
.CODE
;program to execute carriage return, line feed or return to DOS
MAIN PROC 
    ;test data
    MOV AH, 01H 
    INT 21H     
    
    CMP AL, 'A' 
    JE CARRIAGE_RETURN
    
    CMP AL, 'B' 
    JNE LINE_FEED  
    
    JMP RETURN_TO_DOS
    
    LINE_FEED: 
        MOV AH, 02H 
        MOV DL, 0AH 
        INT 21H     
        JMP RETURN_TO_DOS  
    
    CARRIAGE_RETURN: 
        MOV AH, 02H 
        MOV DL, 0DH 
        INT 21H     
        JMP RETURN_TO_DOS   
    
    RETURN_TO_DOS: 
        MOV AH, 4CH 
        INT 21H     
    MAIN ENDP
END MAIN
