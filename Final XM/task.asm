;write a code that will ask user to input alphabet. if its small latter then program will display "S" , if capital later it will display "C"
.MODEL SMALL
.STACK 100h
.DATA
    message DB 0Dh, 0Ah, "Enter an alphabet: $"
    message2 DB 0Dh, 0Ah, "Alphabet case: $"
    
.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h
    MOV DX, OFFSET message
    INT 21h

    MOV AH, 01h
    INT 21h
    MOV BL, AL

    CMP BL, 'a'
    JL _ELSE
    CMP BL, 'z'
    JG _ELSE

    MOV AH, 09h
    MOV DX, OFFSET message2
    INT 21h

    MOV AH, 02h       ; Display 'S'
    MOV DL, 'S'
    INT 21h
    JMP END_PROGRAM

_ELSE:
    CMP BL, 'A'
    JL END_PROGRAM
    CMP BL, 'Z'
    JG END_PROGRAM

    MOV AH, 09h
    MOV DX, OFFSET message2
    INT 21h


    MOV AH, 02h       ; Display 'C'
    MOV DL, 'C'
    INT 21h

END_PROGRAM:
    MOV AH, 4Ch       ; Exit the program
    INT 21h

MAIN ENDP
END MAIN
