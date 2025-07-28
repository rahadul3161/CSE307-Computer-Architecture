.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
        
    MOV AH, 1     ; TAKE INPUT FROM USER
    INT 21H
               
    Mov BL,AL           
               
    MOV AH,2     ; OUTPUT 
    MOV DL,BL    ; (INPUT STAY IN AL DEFAULTLY.)
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    