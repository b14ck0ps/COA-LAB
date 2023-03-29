.MODEL SMALL
.STACK 100h
.DATA

.CODE
;write a program that  right shift the content of a register by 1
MAIN PROC   

    ;test
    MOV AX, 0001h

    SHR AX, 1
    
EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN
