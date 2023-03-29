.MODEL SMALL
.STACK 100h
.DATA

.CODE
;write a program to left shift the contents of a resister by the total number of time input by the user
MAIN PROC

    ;test case
    MOV DX, 5

    MOV AH , 1H
    INT 21H
    AND AL, 0FH
    MOV CL, AL

    SHL DX, CL

    MOV AH, 2H
    INT 21H


EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN
