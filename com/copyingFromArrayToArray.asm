


org 100h


lea bx,numbers
lea bp,numbers2 

mov cx,4 
mov si,0

loop1: 

mov al,[bx+si]   
mov [bp+si],al
inc si          
       
      
loop loop1

ret

numbers db 2,3,5,7
numbers2 db 4 dup(?)

end

