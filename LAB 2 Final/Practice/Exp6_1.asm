
.MODEL SMALL
.STACK 100H
.DATA
.CODE
;program to find the largest of two numbers
MAIN PROC 
    ;test data
    MOV AX , 5
    MOV BX , 10

    MOV CX, AX
    CMP BX, CX
    JLE NEXT
    MOV CX, BX
    
NEXT:
    MOV AX, CX

    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN
