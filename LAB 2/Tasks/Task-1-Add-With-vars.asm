
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA   ;STORE VARIABLES 

A DW 2
B DW 3




.CODE ; CODE SECTION

MAIN PROC     
    
    MOV AX, [A]
    MOV BX, [B]  

     

    ADD AX,BX
    
    ADD AX, '0'

    ; this is the print section
    MOV AH, 2 ; AH, 2 IS FOR OUTPUT
    MOV DX,AX; DX DISPLAY THE VARS
    INT 21H ; ALWAYS CALL THIS AFTER DISPLAY.. INTERUPT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN

ret


