.model small
.stack 100h
.data
    msg db 'Enter a string: $'
    str db 20,?,20 dup('$')
.code
main proc

    ;take a string input then print it
    mov ax, @data
    mov ds, ax

    lea dx, msg
    mov ah, 09h
    int 21h

    lea dx, str
    mov ah, 0Ah
    int 21h

    mov ah, 09h
    lea dx, str+2
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
