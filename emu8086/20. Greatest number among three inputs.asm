.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC   
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    INT 21H
    
    MOV BH,AL
    INT 21H
    
    MOV CL,AL
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    CMP BL,BH
    JG L1
    CMP BH,CL
    JG L3
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    JMP EXIT
    
    L1:
    CMP BL,CL
    JG L2
    MOV AH,2
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    L2:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
    
    L3:
    MOV AH,2
    MOV DL,BH
    21H
    JMP EXIT
    
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
    