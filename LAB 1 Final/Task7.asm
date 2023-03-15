.model small
.stack 100h
.data
    msg db 'Enter a string: $'
    ;20 at the begining is byte size of this var 20byte
    ;? is unknown cz we taking it from user
    ;20 after ? is how much time dup() will repeat
    str db 20,?,20 dup('$') ; dup() is a operand for repeat a cirtain db / dw. normally use for making array
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
    lea dx, str+2 ; cz we know array is dw is address + 2
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
