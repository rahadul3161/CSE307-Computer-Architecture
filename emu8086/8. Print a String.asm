.MODEL SMALL
.STACK 100H
.DATA    
MSG DB "Hello World $"
.CODE

MAIN PROC  
    MOV AX, @DATA  ; INITALIZATION OF DATA SEGMENT
    MOV DS,AX 
    
    
    
    LEA DX, MSG
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    