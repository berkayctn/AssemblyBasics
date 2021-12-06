; multi-segment executable file template.

data segment
  
  string1 db 'berkay'  
    
    
ends

stack segment      
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
   
   
    
    lea bx,string1 
        
    mov si,0                    
    mov cx,6
    
    
loop1:      
          
     and [bx + si],11011111b ;we need to use 11011111b in order to convert berkay to BERKAY           
     inc si


loop loop1

    
          
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
