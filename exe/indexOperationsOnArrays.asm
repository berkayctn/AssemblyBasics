; multi-segment executable file template.

data segment  
    
    numbers1 db 2,4,6,8
    indeXPlusNumber db 4 dup(?)
    indexMinusNumber db 4 dup(?)
    
    
ends

stack segment
    dw   128  dup(0)
ends
    
    
code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
   
    
    lea bx,numbers1
    lea si,indeXPlusNumber    
    
    mov di,0
    mov al,0 
    mov cx,4
    
loop1:    
    
    mov ah,[bx + di]
    
    add ah,al
    
    mov [si], ah
    inc al
    inc si 
    inc di
    
loop loop1  


     
    lea si,indexMinusNumber  
     
    mov di,0
    mov al,0 
    mov cx,4

loop2:

    mov ah,[bx + di]
    
    sub ah,al
    
    mov [si], ah
    inc al
    inc si 
    inc di   

loop loop2 
     

   
       
                       
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
