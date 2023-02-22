.MODEL SMALL
.STACK 100h
.DATA
.CODE
;Suppose DL contain the ASCII code of char
; (if DL > = 'A' and DL <= 'Z') then display DL
; END IF
MAIN PROC

    MOV DL, 'B'

    ; Check if the character is under the range of 'A' to 'Z'
    CMP DL, 'A'
    JL END_IF
    CMP DL, 'Z'
    JG END_IF

    ; If true, display it
    MOV AH, 2
    MOV DL, DL
    INT 21h

END_IF:
    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
