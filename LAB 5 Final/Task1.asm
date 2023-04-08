.MODEL SMALL
.STACK 100h
.DATA
    prompt db 0Dh, 0Ah, 'Enter a character: $'
    binary db 0Dh, 0Ah, 'Binary representation: $'
    count_prompt db 0Dh, 0Ah,  'Number of 1 bits: $'
    count db 0 ; define count as a byte
.CODE
;Write a program that prompts the user to enter a character, 
;and on subsequent lines prints its ASCII code in binary and the total number of 1 bit in the next line.
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; print prompt
    MOV AH, 9
    MOV DX, OFFSET prompt
    INT 21h
    
    MOV AH, 1
    INT 21h
    MOV BL, AL ; save ASCII code in BL

    ; print binary representation
    MOV AH, 9
    MOV DX, OFFSET binary
    INT 21h

    MOV CX, 8 ; number of bits in a byte
    
PRINT_BIT:
    SHL BL, 1 ; shift left to get next bit
    JC SET_BIT ; check if bit is  1
    
    ; bit is not 1
    MOV DL, '0'
    JMP PRINT_CHAR
    
SET_BIT:
    ; bit is set
    MOV DL, '1'
    INC count ; increment count
    
PRINT_CHAR:
    MOV AH, 2
    INT 21h
    
    ; loop until all bits are printed
    DEC CX
    JNZ PRINT_BIT
    MOV DL, 0Ah
    MOV AH, 2
    INT 21h

    MOV AH, 9
    MOV DX, OFFSET count_prompt
    INT 21h

    MOV DL , count
    ADD DL, '0'

    ; print count
    MOV AH, 2
    INT 21h
    
Exit:
    MOV AH,4CH
    INT 21h

MAIN ENDP
END MAIN
