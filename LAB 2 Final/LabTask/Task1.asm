.MODEL SMALL
.STACK 100H
.DATA
.CODE
;program to check if a character is greater than or equal to 'A'
MAIN PROC 
    ;test data
    MOV AL, 'A' 
    
    ; Check if AL is greater than or equal to 'A'
    CMP AL, 'A'
    JLE ELSE     
    
    ; If AL >= 'A', put 5 in CL
    MOV CL, '5'
    JMP PRINT_ 
    JMP EXIT
    
ELSE:
    ; If AL < 'A', put 6 in CL
    MOV CL, '6'
    JMP PRINT_
    JMP EXIT
PRINT_:   
    ; Print the value of CL
    MOV AH, 02H 
    ADD DL, CL
    INT 21H     
    
EXIT:
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN
