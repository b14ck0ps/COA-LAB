.MODEL SMALL
.STACK 100h
.DATA
    prompt db 0Dh, 0Ah, 'Enter a character: $'
    hex_prompt db 0Dh, 0Ah, 'Hexa representation: $'
.CODE
; Write a program that prompts the user to enter a character and prints 
; the ASCII code of the character in hex on the next line. Repeat this 
; process until the user types a carriage return.
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

INPUT_LOOP:
    ; print prompt
    MOV AH, 9
    MOV DX, OFFSET prompt
    INT 21h

    ; read character from user input
    MOV AH, 1
    INT 21h

    XOR AH, AH
    MOV BX, AX

    ; check for carriage return
    CMP BL, 0Dh
    JE Exit

    MOV AH, 9
    MOV DX, OFFSET hex_prompt
    INT 21h

    PRINT_HEX:
    ; number of digits to print
    MOV CX,4

    MOV AX,BX

    CONVETR_TO_HEX:
        JCXZ  INPUT_LOOP

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

    JMP INPUT_LOOP

Exit:
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
