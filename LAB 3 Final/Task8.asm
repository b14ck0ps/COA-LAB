.MODEL SMALL
.STACK 100h
.DATA
    prompt1 DB 'Enter a character: $'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ;test data
    MOV AL, 2
    
    CMP AL, 2
    JLE ELSE_BLOCK
    CMP AL, 9
    JGE ELSE_BLOCK
    
    ; Ask user to input a character and print it
    MOV AH, 9
    LEA DX, prompt1
    INT 21h
    
    MOV AH, 1
    INT 21h
    MOV DL, AL
    MOV AH, 2
    INT 21h
    
    JMP END_IF
    
ELSE_BLOCK:

    MOV AH, 1
    INT 21h

    CMP AL, 'a'
    JL PRINT_N
    CMP AL, 'z'
    JG check_uppercase
    JMP PRINT_C

check_uppercase:
    CMP AL, 'A'
    JL PRINT_N
    CMP AL, 'Z'
    JG PRINT_N
    JMP PRINT_C
    
PRINT_C:
    ; Print 'c'
    MOV AH, 02H
    MOV DL, 'c'
    INT 21h
    
    JMP END_IF
    
PRINT_N:
    ; Print 'n'
    MOV AH, 02H
    MOV DL, 'n'
    INT 21h
    
END_IF:
    MOV AH, 4CH
    INT 21h

    
MAIN ENDP
END MAIN
