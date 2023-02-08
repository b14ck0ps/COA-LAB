
org 100h

.MODEL SMALL
.STACK 100H

.DATA   ;STORE VARIABLES 

A DW 'A'
B DW 'J'
C DW 'R'
D DW 'A'
E DW 'N'

.CODE ; CODE SECTION

MAIN PROC     
    
    MOV AX, [A] 

    MOV AH, 2 
    MOV DX,AX
    INT 21H 

    MOV AX, [B]
    MOV AH, 2
    MOV DX,AX
    INT 21H

    MOV AX, [C]
    MOV AH, 2
    MOV DX,AX
    INT 21H

    MOV AX, [D]
    MOV AH, 2
    MOV DX,AX
    INT 21H

    MOV AX, [E]
    MOV AH, 2
    MOV DX,AX
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN

ret


