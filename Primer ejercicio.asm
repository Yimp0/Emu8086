.model small ;oyara oño
.stack
.data

cadena1 db 'hola mundo .$'

.code ;segmento codigo

programa:
  mov ax, @data
  mov ds, ax
  mov dx, offset cadena1
  mov ah, 9
  int 21h
  
  mov ah,0
  int 16h

end programa  