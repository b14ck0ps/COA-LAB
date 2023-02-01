
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA   ;STORE VARIABLES 

A DW ?
B DW ?




.CODE ; CODE SECTION

MAIN PROC     
    
    MOV AX, [A]
    MOV BX, [B] 
    
    
    
    ; input A
    MOV AH, 1 ; AH, 1 FOR TAKIKG INPUT
    INT 21H   ; always call this interupt
    MOV AX,AX ; Save input to BL reg
    SUB AX, '0'
                                    
    ; input B
    MOV AH, 1 ; AH, 1 FOR TAKIKG INPUT
    INT 21H   ; always call this interupt
    MOV BX,AX ; Save input to BL
    SUB BX, '0' 

    ADD AX,BX
    
    ;MOV AL, BL
    ;ADD AL, '0'

    ; this is the print section
    MOV AH, 2 ; AH, 2 IS FOR OUTPUT
    MOV DX,AX; DX DISPLAY THE VARS
    INT 21H ; ALWAYS CALL THIS AFTER DISPLAY.. INTERUPT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN

ret


