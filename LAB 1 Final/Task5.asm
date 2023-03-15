.MODEL SMALL
.STACK 100h
.DATA
.CODE
;dispay '2' if AL contains E
;if AL contains A display '1';
MAIN PROC
    ;take input from user
    MOV AH, 1
    INT 21h
   
    CMP AL, 'e'
    JE PERFORM_A_OP
   
    CMP AL, 'a'
    JE PERFORM_B_OP
    
    ; Else
    JMP END_IF

PERFORM_B_OP:
    MOV AH, 2
    MOV DL, '1'
    INT 21h
    JMP END_IF

PERFORM_A_OP:
    MOV AH, 2
    MOV DL, '2'
    INT 21h

END_IF:
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
