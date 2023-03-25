.MODEL SMALL
.STACK 100H
.DATA
    String DB 6 
.CODE
;Write a code that takes input from a user and stops when the length of the input is more than 5.
MAIN PROC

    MOV AX , @DATA
    MOV DS , AX

    MOV AH, 0AH 
    MOV DX, OFFSET String
    INT 21H 
EXIT:
    MOV AH, 4CH 
    INT 21H 

MAIN ENDP
