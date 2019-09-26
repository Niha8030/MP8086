.model small
.data
.code
 mov ax,@data
 mov ds,ax
 mov cl,04h
 mov ah,01h
 int 21h
 mov bl,al
 and al,0f0h
 shr al,cl
 add al,30h
 mov ah,02h
 mov dl,al
 int 21h
 mov dl,bl
 and bl,0fh
 add bl,30h
 mov ah,02h
 mov dl,bl
 int 21h
 mov ah,4ch
 int 21h
 end
