
.MODEL SMALL
.STACK 100H
.DATA

; ASCII value set by comma ',' and full string will be inside a single ' and end with a $ sign
MSG DB 0AH, 0DH, 'Simple meesage$' 

.CODE

MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MSG ; LEA return address of this string
    MOV AH, 9  ; This line will print the full string
    INT 21H
    
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN
