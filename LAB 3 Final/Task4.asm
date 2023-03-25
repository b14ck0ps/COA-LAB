.MODEL SMALL
.STACK 100h
.DATA
    char DB ? 
    prompt DB 'Enter a character: $'
.CODE
;Write a program to print any ASCII character for 30 times.
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
PRINT_LOOP:
    MOV AH, 2 
    MOV DL, char 
    INT 21h 
    LOOP PRINT_LOOP 
    
    
    MOV AH, 4CH 
    INT 21h 
    
MAIN ENDP
END MAIN
