.MODEL SMALL
.STACK 100h
.DATA
    char DB ?
    prompt DB 'Enter a number: $'
.CODE
;take input from user and print test if even or odd, print 'o' if odd, 'e' if even
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, prompt
    INT 21h
        
    MOV AH, 1
    INT 21h
    MOV char, AL 

    TEST char, 1
    JZ EVEN
    MOV AH, 2
    MOV DL, 'o'
    INT 21h
    JMP EXIT
EVEN:
    MOV AH, 2
    MOV DL, 'e'
    INT 21h



EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN
