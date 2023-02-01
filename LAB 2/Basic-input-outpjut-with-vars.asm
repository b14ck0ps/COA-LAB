
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA   ;STORE VARIABLES  

;DB means databyte and 

;name   type   ?
  A      DB    ?



.CODE ; CODE SECTION

MAIN PROC  
    
    MOV AL, 'A'  ; save char
    
    ; getting data from DATA section
    MOV AX, @DATA
    MOV DS, AX              
    
    
    ;this is the input section
    MOV AH, 1 ; AH, 1 FOR TAKIKG INPUT
    INT 21H   ; always call this interupt
    MOV BL,AL ; Save input to BL reg
                                    
    ; SAVING input to vars
    MOV AH, 2
    MOV DL, A
    INT 21H
    
    ;this is for new print line
    MOV AH,2
    MOV DL, 0AH ; this is the new line HEX.. check ascii code...
    INT 21H
    MOV DL,0DH ; carries return for new line otw some there are some space before new line
    INT 21H
    
    ; this is the print section
    MOV AH, 2 ; AH, 2 IS FOR OUTPUT
    MOV DL,BL; DX DISPLAY THE VARS
    INT 21H ; ALWAYS CALL THIS AFTER DISPLAY.. INTERUPT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
       
END MAIN

ret


