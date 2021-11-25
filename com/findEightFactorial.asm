org 100h


mov al,1
mov bl,number

               
mov cx,8               
               
loop1:

     inc bl
     mul bx
     mov number2,ax
     
                                                             
loop loop1



ret
number db 0
number2 dw 1 dup(?)



  
