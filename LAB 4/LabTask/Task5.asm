.MODEL SMALL
.STACK 100h
.DATA

MSG DB 'Enter a character: $'
OUTPUT_MSG DB 0AH,0DH,'Thank you.$'

.CODE

MAIN PROC

MOV AX,@DATA
MOV DS,AX

LEA DX, MSG
MOV AH, 9
INT 21h

MOV AH, 1
INT 21h 

MOV CX, 50 

PRINT_LOOP:
    MOV AH, 2 
    MOV DL, AL 
    INT 21h

    DEC CX 
    JNZ PRINT_LOOP 
LEA DX, OUTPUT_MSG
MOV AH, 9
INT 21h

Exit:
MOV AH,4CH
INT 21h

MAIN ENDP
END MAIN
