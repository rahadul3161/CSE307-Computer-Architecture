;Take three inputs from the user and display the first and second inputs with a newline between them.
org 100h

MOV AH, 1
INT 21H
MOV BH, AL   ;a

INT 21H
MOV BL, AL   ;b

INT 21h
MOV CH, AL   ;c
                     
                     
MOV AH, 2

MOV DL, 10 
INT 21H

MOV DL, 13
INT 21H

MOV DL, BH
INT 21H

MOV DL, 10
INT 21H 

MOV DL, 13
INT 21H

MOV DL, BL
INT 21H
MOV DL, 10
INT 21H


ret
MAIN ENGP
END MAIN




