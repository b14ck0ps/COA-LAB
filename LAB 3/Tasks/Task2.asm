org 100h

.MODEL SMALL
.STACK 100H

.DATA   ;STORE VARIABLES 
result DB 0AH,0DH,'THE SUM IS $' ,

MSG DB 'THE SUM OF' 
.CODE
MAIN PROC 


    MOV AX, '?' 
    MOV AH, 2 
    MOV DX,AX
    INT 21H

    ; input A
    MOV AH, 1 
    INT 21H   
    MOV BL,AL 
    SUB BL, '0' ; convert to int
    
    ; input B
    MOV AH, 1 
    INT 21H   
    MOV CL,AL 
    SUB CL, '0' ; convert to int


    MOV AX,@DATA
    MOV DS,AX

    ; \n
    LEA DX,result
    MOV AH,9
    INT 21H 

    ;A+B
    ADD BL, CL
    
    ;convert to deciaml
    MOV AL, BL
    ADD AL, '0'

    ; print added data
    MOV AH, 2 
    MOV DL,AL
    INT 21H


    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN