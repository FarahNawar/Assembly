   .MODEL SMALL
   .DATA  
   MSG DB 0AH,0DH,'Enter a hex digit : $'
   MSG2 DB 0AH,0DH,' In decimal it is 1'
   C1 DB ?,'$'
   .CODE
   MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   MOV AH,9
   LEA DX,MSG
   INT 21H
   
   MOV AH,1
   INT 21H
   
   SUB AL,11H
   MOV C1,AL 
   
   MOV AH,9
   LEA DX,MSG2
   INT 21H
   
   MOV AH,4CH ; DOS exit function
   INT 21H    ;exit to DOS
   
   MAIN ENDP
   END MAIN
   