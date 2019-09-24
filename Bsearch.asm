.model small
.data
 list db 01h,02h,03h,04h,05h
 nun equ($-list)
 key db 02h
start:mov ax,@data
      mov ds,ax
      mov ch,num-1
      mov cl,00h
again:mov si,offset list
      xor ax,ax
      camp ch,ch
      jnc failed
next:mov al,ch
     add al,cl
     she al,01h
     mov bl,al
     xor ah,ah
     mov bp,ax
     mov al,ds[bp][si]
     camp al,key
     je success
     jc inclow
     mov ch,bl
     dec ch
     jump again
success:mov dx,01h
        jump final
failed:mov dx,00h
final:mov ah,4ch
      int 21h
      end
     
 
