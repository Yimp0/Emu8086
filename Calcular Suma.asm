;calcular operacion resta
include 'emu8086.inc'
.data

resta db 2 dup (?)

Restas proc
printn "Ingrese el primer numero: "

call scan_num
mov resta[0], cl

printn "Ingrese el segundo numero: "
call scan_num
sub resta[1], cl

xor ax,ax
add al,resta[0]
add al,resta[1]
printn "La resta total es: "

call print_num

Restas  endp
exit:
printn ""
print "Precionar enter para salir.."
mov ah,0
int 16h

ret

define_print_string
define_print_num
define_print_num_uns
define_scan_num


end