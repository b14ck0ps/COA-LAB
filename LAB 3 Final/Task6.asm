.MODEL SMALL
.STACK 100h
.DATA
    input DB ?
    prompt DB 'Enter a character: $'
.CODE
;Write a code that takes input from a user and stops taking it when ‘enter’ pressed.
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
INPUT_LOOP:
    MOV AH, 9
    LEA DX, prompt
    INT 21h
        
    MOV AH, 1
    INT 21h
    MOV input, AL 
    
    CMP input, 0DH ; check for ASCII value of 'Enter' key
    JE END_LOOP
    
    MOV AH, 2 
    MOV DL, input 
    INT 21h 
    
    JMP INPUT_LOOP

END_LOOP:
    MOV AH, 4CH 
    INT 21h 
    
MAIN ENDP
END MAIN
