.MODEL SMALL
.STACK 100h
.DATA
    char DB ?
    prompt DB 'Enter a character: $'
.CODE
;Write a program to print any ASCII character for 30 times in 3 separate lines each containing 10 characters.
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, prompt
    INT 21h
        
    MOV AH, 1
    INT 21h
    MOV char, AL 
    
    MOV CX, 30
    MOV BX, 0
PRINT_LOOP:
    MOV AH, 2
    MOV DL, char
    INT 21h
    INC BX
    
    CMP BX, 10
    JNE NO_NEWLINE
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21h
    MOV DL, 0AH
    INT 21h
    MOV BX, 0
NO_NEWLINE:
    LOOP PRINT_LOOP 
    
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN
