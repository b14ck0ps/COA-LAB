org 100h

.MODEL SMALL
.STACK 100H

.DATA   ;STORE VARIABLES  




.CODE ; CODE SECTION

MAIN PROC  

;write a program to print a number

    MOV BL, 5
    ADD BL, '0'
    MOV AL,BL
    
    ; this is the print section
    MOV AH, 2 ; AH, 2 IS FOR OUTPUT
    MOV DL,AL; DX DISPLAY THE VARS
    INT 21H ; ALWAYS CALL THIS AFTER DISPLAY.. INTERUPT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN

ret


