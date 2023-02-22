.MODEL SMALL
.STACK 100h
.DATA
.CODE
;dispay 'o' if AL contains I or 3;
;if AL contains 2 or 4, display 'e';
MAIN PROC
    ;test val
    MOV AL, '4' 
   
    CMP AL, 'I'
    JE DISPLAY_O
   
    CMP AL, '3'
    JE DISPLAY_O
   
    CMP AL, '2'
    JE DISPLAY_E
   
    CMP AL, '4'
    JE DISPLAY_E
    
    ; Else
    JMP END_IF

DISPLAY_O:
    MOV AH, 2
    MOV DL, 'o'
    INT 21h
    JMP END_IF

DISPLAY_E:
    MOV AH, 2
    MOV DL, 'e'
    INT 21h

END_IF:
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
