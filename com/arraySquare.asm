org 100h
  
 lea bx,numbers1
 lea bp,squareNumbers1
 
 mov si,0
 mov di,0
 mov cx,4
 
loop1:
 
 mov al,[bx+si]
 mul al
 
 mov [bp+di],al
 inc si
 add di,2
 
 loop loop1                 
        

  

ret
 numbers1 db 2,4,5,3
 squareNumbers1 dw 4 dup(?)
