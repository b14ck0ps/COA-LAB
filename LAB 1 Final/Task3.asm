org 100h

.MODEL SMALL
.STACK 100H

.DATA   ;STORE VARIABLES  




.CODE ; CODE SECTION

MAIN PROC  

;write a program to show 5 + 3

    MOV AL , 5
    MOV BL , 3
    ADD AL , BL

    ADD AL, '0' ; CONVERT TO ASCII

    
    ; this is the print section
    MOV AH, 2 ; AH, 2 IS FOR OUTPUT
    MOV DL,AL; DX DISPLAY THE VARS
    INT 21H ; ALWAYS CALL THIS AFTER DISPLAY.. INTERUPT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN

ret


