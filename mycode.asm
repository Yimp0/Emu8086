;grafico caida de linea en ventana
mov cx,1
mov al,13h
mov ah,0
int 10h ;video movimiento

bucle1:
   mov dx, cx
   mov al,color ;pixel color
   mov ah, 0ch
   int 10h
   
   cmp cx,101 ;caida diagonal
   jz fin
   
   inc cx
   add color,2
   jmp bucle1
fin:
ret
color db 1