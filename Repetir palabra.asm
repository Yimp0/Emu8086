; Salto de mensaje repetido en consola
.model small
.stack
.data

cont db 0
msg db 13,10,'salta.$'

.code 
mov ax,seg msg
mov ds, ax

ciclo:
     cmp cont,15
     je salir
     mov ah,09h
     lea dx, msg
     int 21h
     
     inc cont
     jmp ciclo
     salir:
.exit