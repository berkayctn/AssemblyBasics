
org 100h
 
lea bx,numbers 
mov si,0 
mov di,0
mov dl,2  
mov cx,10

 
start:

jcxz finish
mov ax,[bx + si]  
mov ah,0
div dl 
cmp ah,0
je even 
jmp odd


  
  
even:
 
mov dh,[bx + si]  
mov [evenNumbers + di ],dh 
inc si
inc di
dec cx
jmp start
 
 
 
odd: 

mov dh,[bx + si]  
mov [oddNumbers + bp],dh
inc si
inc bp
dec cx 
jmp start 
 
 
 
finish:



ret
numbers db 1,2,3,4,5,6,7,8,9,10
evenNumbers db 10 dup(0) 
oddNumbers db 10 dup(0)




