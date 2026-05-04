.model small
.stack
.data

cadena1 db 13,10,'Bienvenido a la UTP. $'
cadena2 db 13,10,'curso arquitectura .$'
cadena3 db 13,10, 'Oyara.$'
cadena4 db 13,10, 'OIO.$'

.code

programa:
   mov ax, @data 
   mov ds, ax
   
   mov dx, offset cadena1
   mov ah, 9
   int 21h
   
   mov dx, offset cadena2
   mov ah, 9
   int 21h
   
   mov dx, offset cadena2
   mov ah, 9
   int 21h
   
   mov dx, offset cadena2
   mov ah, 9
   int 21h 
   
end programa   