.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC  
    MOV AH,1 
    INT 21H
    
    MOV BL,AL
    SUB BL,32    ;LOWER CASE TO UPPER CASE
    
    MOV AH,2
    MOV DL,VAR
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    