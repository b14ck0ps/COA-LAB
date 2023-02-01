
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA   ;STORE VARIABLES


.CODE ; CODE SECTION
MAIN PROC  
    
    MOV AL, 'A'
    
    MOV AH, 1 ; AH, 1 FOR TAKIKG INPUT
    INT 21H
    MOV BL,AL 
    MOV AH, 2 ; AH, 2 IS FOR OUTPUT
    MOV DL,BL; DX DISPLAY THE VARS
    INT 21H ; ALWAYS CALL THIS AFTER DISPLAY.. INTERUPT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN

ret


