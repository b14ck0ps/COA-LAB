.MODEL SMALL
.STACK 100h
.DATA

.CODE
;write a program that convert F to f
MAIN PROC

    MOV DL, 'F'
    OR DL, 20h
    
    MOV AH, 02h
    INT 21h

EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN
