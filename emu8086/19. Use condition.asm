.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC   
    MOV BL,5
    MOV BH,4
    
    CMP BL,BH
    JG LEVEL
    
    MOV AH,2
    ADD BL,48
    MOV DL,BH
    INT 21H
    
    JMP EXIT
    
    LEVEL:
    MOV AH,2
    ADD BL,48
    MOV DL,BL
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    