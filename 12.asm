   .MODEL SMALL
   .DATA  
   STARS DB '*********',0AH,0DH,'$' 
   MID DB '***'
   C1 DB ?
   C2 DB ?
   C3 DB ?,'***',0AH,0DH,'$'
   
   .CODE
   MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
  
   MOV AH,1
   INT 21H
   MOV C1,AL
   
   INT 21H
   MOV C2,AL
   
   INT 21H
   MOV C3,AL
   
   MOV AH,2
   MOV DL,0DH
   INT 21H 
  
   LEA DX,STARS
   MOV AH,9
   
   INT 21H
   INT 21H
   INT 21H
   INT 21H
   INT 21H
     
   LEA DX,MID
   INT 21H
   
   LEA DX,STARS
   INT 21H
   INT 21H
   INT 21H
   INT 21H
   INT 21H        
          
   MOV AH,4CH ; DOS exit function
   INT 21H    ;exit to DOS
   
   MAIN ENDP
   END MAIN
   

