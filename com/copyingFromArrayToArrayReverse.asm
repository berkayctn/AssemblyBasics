

org 100h

;Goal -> Berkay -> yakreB


lea bx,name1  
lea bp,reverseName1
   
   
mov si,5  
mov di,0   

mov cx,6 

loop1:

mov al,[bx+si]
mov [bp+di],al

inc di
dec si 

loop loop1

  
ret  
name1 db 'Berkay'
reverseName1 db 6 dup(?)

end




