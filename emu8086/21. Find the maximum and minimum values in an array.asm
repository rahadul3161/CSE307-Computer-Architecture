.model small
.stack 100h
.data
array db 5, 9, 2, 15, 3  
length db 5  
max db ? 
min db ? 
.code
main:
    mov ax, @data  
    mov ds, ax

    mov si, 0          
    mov al, array[si]  
    mov max, al  
    mov min, al 

    inc si  
    mov cx, 4  
next:
    mov al, array[si]    
    cmp al, max
    jle check_min
    mov max, al
check_min:
    cmp al, min
    jge skip
    mov min, al
skip:
    inc si
    loop next 
    
    mov ah, 4ch
    int 21h
end main
