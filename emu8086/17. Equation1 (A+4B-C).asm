.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC           ;A+4B-C
    MOV AH,1 
    INT 21H
    
    MOV BL,AL
    SUB BL,48
    INT 21H
    MOV BH,AL
    SUB BH,48
    INT 21H
    MOV CL,AL
    SUB CL,48
    
    ADD BL,BH
    ADD BL,BH
    ADD BL,BH
    ADD BL,BH
    SUB BL,CL
    
    MOV AH,2
    MOV BL,0DH
    INT 21H
    MOV DL,0AD
    INT 21H
    
    MOV AH,2
    MOV BL,48
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    