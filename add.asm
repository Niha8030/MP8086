.model small

.data

 a dw 25h

 b dw 30h

 c dw 12h

.code

 mov ax,@data

 mov ds,ax

 mov ax,a

 mov bx,b

 mov cx,c

 add ax,bx

 sub ax,cx

 mov ah,4ch

 int 21h

 end

