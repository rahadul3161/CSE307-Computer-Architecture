.MODEL SMALL
.STACK 100H
.DATA    
MSG DB "Hello World $" 
MSG2 DB "This is Md Rahadul $"
.CODE

MAIN PROC  
    MOV AX, @DATA  ; INITALIZATION OF DATA SEGMENT
    MOV DS,AX 
    
    
    
    LEA DX,MSG
    MOV AH,9       ; These codes are for printing Hello World
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H        ;These codes are for new line
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9       ; These codes are for printing This is Md Rahadul 
    INT 21H
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    