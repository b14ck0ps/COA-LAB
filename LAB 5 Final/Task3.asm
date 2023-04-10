.MODEL SMALL
.STACK 100h
.DATA
    prompt db 0Dh, 0Ah, 'Enter a binary number (up to 16 digits): $'
    hex_prompt db 0Dh, 0Ah, 'Hexa representation: $'
    error_msg db 0Dh, 0Ah, 'Error: Illegal character detected.$'
.CODE
; Write a program that prompts the user to enter a binary number of up to
; 16 digits and prints the hexadecimal representation on the next line.
; If the user enters an illegal character, prompt them to begin again.
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

JMP INPUT
INPUT_ERROR:
    MOV AH, 9
    MOV DX, OFFSET error_msg
    INT 21h
INPUT:
    MOV AH, 9
    MOV DX, OFFSET prompt
    INT 21h

    ;bin storage
    XOR BX, BX
    ;counter (take at most 16 digits)
    MOV CX, 16

    MOV AH,1
    INT 21h

WHILE_:
    ;check carriage return
    CMP AL, 0Dh
    JE END_WHILE
    
    ;validation of input (only 0 and 1 are allowed)
    CMP AL, '0'
    JL INPUT_ERROR
    CMP AL, '1'
    JG INPUT_ERROR

    ;convert to binary
    AND AL, 0Fh
    SHL BX, 1
    OR BL,AL

    ;if not 16 digits, read next
    DEC CX
    JZ END_WHILE
    INT 21h
    JMP WHILE_
END_WHILE:
    MOV AH, 9
    MOV DX, OFFSET hex_prompt
    INT 21h

    
PRINT_HEX:
    ; number of digits to print
    MOV CX,4

    MOV AX,BX

CONVETR_TO_HEX:
    JCXZ  EXIT

    ;swap AL and AH
    ROL AX,4
    
    MOV DL,AL
    ;clear high nibble
    AND DL,0xF

    ADD DL,'0'
    CMP DL,'9'

    JBE PRINT_DIGIT
    ;convert to hex character
    ADD DL,7
PRINT_DIGIT:            
    PUSH AX
    MOV AH,2
    INT 21h
    POP AX
    LOOP CONVETR_TO_HEX

EXIT:
    MOV AH,4Ch
    INT 21h

MAIN ENDP
END MAIN
