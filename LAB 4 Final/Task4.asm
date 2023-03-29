.MODEL SMALL
.STACK 100h
.DATA

.CODE
;write a program that convert f to F
MAIN PROC

    MOV DL, 'f'
    AND DL, 0DFh

    MOV AH, 02h
    INT 21h

EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN
