
org 100h

lea bx,numbers
mov si,0
mov cx,5

loop1:

mov al, [bx + si] 
add al,2  
mov [bx + si],al  

inc si 
dec cx
jcxz finish
jmp loop1


finish:



ret
numbers db 2,3,4,5,6

