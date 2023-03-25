.MODEL SMALL        
.STACK 100h         
.DATA              
.CODE              
;A program checks the value of DL and CL register. If the value of DL and CL is below 3 then it prints ‘b’.
MAIN PROC           
    MOV AH, 02h     
    MOV BL, 'b'     
    MOV DL, 2       
    MOV CL, 1       

    CMP DL, 3       
    JGE END_IF      
    
    CMP CL, 3       
    JGE END_IF      
    
    MOV DL, BL      
    INT 21h         
    
END_IF:
    MOV AH, 4CH     
    INT 21h         

MAIN ENDP           
END MAIN            
