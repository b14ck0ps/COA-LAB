.MODEL SMALL
.STACK 100h
.DATA

.CODE
;write a case base code to show how we can set , clear and complement a bit
MAIN PROC

    MOV AX, 1

    ;set bit  case
    OR AX, 1
    ;clear bit case
    AND AX, 0
    ;complement bit case
    XOR AX, 1
     

EXIT:
    MOV AH, 4CH
    INT 21h 
    
MAIN ENDP
END MAIN
