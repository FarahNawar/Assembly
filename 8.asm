   .MODEL SMALL
   .DATA  
   MSG DB 0AH,0DH,'THE SUM OF '
   C1 DB ?,' AND '
   C2 DB ?,' IS '
   SUM DB ?,'$' 
   .CODE
   MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   
   MOV AH,2 ; single character output function
   MOV DL,'?'; character to be displayed is '?'
   INT 21H   ;display it
   
   MOV AH,1 ; single character input function
   INT 21H  ;execute function :read 1st integer
   MOV C1,AL;Store it into memory
   
   INT 21H
   MOV C2,AL
   
   ADD AL,C1
   SUB AL,30H
   MOV SUM,AL
   
   LEA DX,MSG
   MOV AH,9
   INT 21H
   
   MOV AH,4CH ; DOS exit function
   INT 21H    ;exit to DOS
   
   MAIN ENDP
   END MAIN
   