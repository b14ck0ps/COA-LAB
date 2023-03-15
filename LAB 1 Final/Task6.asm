.MODEL SMALL
.STACK 100h
.DATA
.CODE
;performing (2+3) if user enters 'a' and (5-2) if user enters 'b'
MAIN PROC
    ;take input from user
    MOV AH, 1
    INT 21h
   
    CMP AL, 'a'
    JE PERFORM_A_OP
   
    CMP AL, 'b'
    JE PERFORM_B_OP
    
    ; Else
    JMP END_IF

PERFORM_B_OP:
    MOV AL , 5
    MOV BL, 2
    SUB AL, BL
    ADD AL, '0'

    MOV AH, 2
    MOV DL, AL
    INT 21h
    JMP END_IF

PERFORM_A_OP:
    MOV AL , 2
    MOV BL, 3
    ADD AL, BL
    ADD AL, '0'

    MOV AH, 2
    MOV DL, AL
    INT 21h

END_IF:
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
