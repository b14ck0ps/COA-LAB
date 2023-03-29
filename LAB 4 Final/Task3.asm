.MODEL SMALL
.STACK 100h
.DATA

.CODE
;write a program that will set 3rd and 5th bit of a register containing the 4h
MAIN PROC

    MOV AL , 4H ; 0000 0100
    MOV BL , 14H ; 0001 0100

    OR AL , BL ; 0001 0100

    ;print
    MOV AH, 02H
    MOV DL, AL
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN
