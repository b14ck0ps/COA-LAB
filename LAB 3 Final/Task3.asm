.MODEL SMALL        
.STACK 100h         
.DATA              
    INPUT_MSG DB 'Enter a number: $'  
.CODE  
;Write a program that takes input from the user. If the input is ‘1’ then the program will show sum of 2 and 3. If the input is ‘2’ then the program 
;will show the subtraction of 4 and 3. If the input is ‘3’ then the program will print the input. For other cases the program will show a 
;character.            
MAIN PROC 

    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09h     
    LEA DX, INPUT_MSG 
    INT 21h         

    MOV AH, 01h     
    INT 21h         
    SUB AL, '0'     

    CMP AL, 1       
    JE SUM          

    CMP AL, 2       
    JE SUBTRACT     

    CMP AL, 3       
    JE PRINT        

    MOV AH, 02h     
    MOV DL, 'c'     
    INT 21h         
    JMP END_IF      

SUM:
    MOV AH, 02h     
    MOV DL, '5'     
    INT 21h         
    JMP END_IF      

SUBTRACT:
    MOV AH, 02h     
    MOV DL, '1'     
    INT 21h         
    JMP END_IF      

PRINT:
    MOV AH, 02h     
    MOV DL, AL      
    ADD DL, '0'     
    INT 21h         

END_IF:
    MOV AH, 4CH     
    INT 21h         

MAIN ENDP           
END MAIN            
