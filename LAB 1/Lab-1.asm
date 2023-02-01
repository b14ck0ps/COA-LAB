
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here      
jmp start
msg: db     "Hello, World!:" , 0Dh,0Ah, 24h
start:
    mov dx, msg
    mov ah, 09h
    int 21h
    
    mov ah, 0
    int 16h          

ret




