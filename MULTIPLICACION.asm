;Calcular operacion multiplicacion 
org 100h
include 'emu8086.inc'

define_print_string
define_print_num
define_print_num_uns
define_scan_num

jmp inicio
numero1 db 13,10, 'digita un numero: $'
numero2 db 13,10, 'digita otro numero: $'
multi db 13,10, 'Resultado es: $'

num1 dw ?
num2 dw ?

inicio:
   mov ah,09
   lea dx,numero1
   int 21h
   
   call scan_num
   mov num1,cx
   
   mov ah,09
   lea dx,numero2
   int 21h
   
   call scan_num
   mov num2,cx
   
   ;multiplicacion
   mov ah,09
   lea dx,multi
   int 21h
   
mov ax,num1
mov ax,num2
mul bx
call print_num

.exit
end
   
   