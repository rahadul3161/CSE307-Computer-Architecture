.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AH,1
    INT 21H      ;USER INPUT
    
    MOV BL,AL  
    
    MOV AH,2
    MOV DL,0DH   ;CARRIAGE RETURN
    INT 21H
    MOV DL,0AH   ; 0A IS FOR NEW LINE IN ASKI CODE
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN