
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA   ;STORE VARIABLES  




.CODE ; CODE SECTION

MAIN PROC  

;write a program to add 2 number, take them as input and print them as output
                 
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
              
    ;A+B
    ADD BL, CL    
    
    ;convert to deciaml
    MOV AL, BL
    ADD AL, '0'          
    
    
    
    ; this is the print section
    MOV AH, 2 ; AH, 2 IS FOR OUTPUT
    MOV DL,AL; DX DISPLAY THE VARS
    INT 21H ; ALWAYS CALL THIS AFTER DISPLAY.. INTERUPT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN

ret


