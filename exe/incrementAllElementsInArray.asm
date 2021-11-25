; multi-segment executable file template.

data segment
   
  numbers db 2,3,4,5    
   
ends


code segment
start:

; set segment registers:
    mov ax, data
    mov ds, ax
   

    ; add your code here 
     lea bx,numbers
     mov cx,4 
     mov si,0
     
loop1:  
      
    inc [bx+si]
    inc si
    loop loop1
   
       
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
