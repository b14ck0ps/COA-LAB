.MODEL SMALL        
.STACK 100h         
.DATA              
.CODE              
; programe to print o or e depending on the value of DL
MAIN PROC           
    MOV AH, 02h     
    MOV BL, 'o'     
    MOV CL, 'e'     
    MOV DL, 3       

    CMP DL, 1       
    JE PRINT_O      
    
    CMP DL, 3       
    JE PRINT_O      
    
    CMP DL, 2       
    JE PRINT_E      
    
    CMP DL, 4       
    JE PRINT_E      
    
    JMP END_IF      

PRINT_O:
    MOV DL, BL      
    INT 21h         
    JMP END_IF      

PRINT_E:
    MOV DL, CL      
    INT 21h         

END_IF:
    MOV AH, 4CH     
    INT 21h         

MAIN ENDP           
END MAIN            
