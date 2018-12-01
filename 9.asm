   .MODEL SMALL
   .DATA  
   MSG DB 0AH,0DH,'Enter three initials:$'
   C1 DB ?,0AH,0DH
   C2 DB ?,0AH,0DH
   C3 DB ?,'$' 
   .CODE
   MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   LEA DX,MSG
   MOV AH,9
   INT 21H 
   
   MOV AH,1
   INT 21H
   MOV C1,AL
   
   INT 21H
   MOV C2,AL
   
   INT 21H
   MOV C3,AL 
   
   MOV AH,2
   MOV DL,0AH
   INT 21H
   
   MOV DL,0DH
   INT 21H
   
   LEA DX,C1
   MOV AH,9
   INT 21H 
   
   MOV AH,4CH ; DOS exit function
   INT 21H    ;exit to DOS
   
   MAIN ENDP
   END MAIN
   