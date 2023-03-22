.MODEL SMALL
.STACK 100H

.DATA ; Store variables
promptMsg DB 'Please enter a character: $'
repeatMsg DB 0Dh, 0Ah, 'Do you want to do it again? (Y/N): $'
invalidMsg DB 0Dh, 0Ah, 'Invalid input. Please try again.$'
newLine DB 0Dh, 0Ah, '$'

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    repeatProgram:
    ; Display prompt message
    LEA DX, newLine
    MOV AH, 9
    INT 21H
    LEA DX, promptMsg
    MOV AH, 9
    INT 21H


    ; Get user input
    MOV AH, 1
    INT 21H
    MOV BL, AL

    ; Display input on a new line
    LEA DX, newLine
    MOV AH, 9
    INT 21H
    MOV DL, BL
    MOV AH, 2
    INT 21H

    ; Ask if user wants to do it again
    LEA DX, repeatMsg
    MOV AH, 9
    INT 21H

    ; Get user input
    MOV AH, 1
    INT 21H
    CMP AL, 'y'
    JE repeatProgram
    CMP AL, 'Y'
    JE repeatProgram

    ; If user enters an illegal character, ask to try again
    CMP AL, 'n'
    JE exitProgram
    CMP AL, 'N'
    JE exitProgram

    LEA DX, invalidMsg
    MOV AH, 9
    INT 21H
    JMP repeatProgram
exitProgram:
MOV AH, 4Ch
INT 21H

MAIN ENDP
END MAIN