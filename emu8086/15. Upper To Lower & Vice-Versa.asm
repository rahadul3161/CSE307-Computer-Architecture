.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC  
    MOV AH,1 
    INT 21H
    
    MOV BL,AL
    ADD BL,32    ;UPPER CASE TO LOWER CASE
    
    MOV AH,2
    MOV DL,VAR
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    