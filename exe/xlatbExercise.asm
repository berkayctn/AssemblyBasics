; multi-segment executable file template.

data segment  
    
   index db 2,0,1
   numbers db 4H,8H,0CH
   destination db 3 dup(?)     
   
ends

stack segment
    dw   128  dup(0)
ends


code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
     
    ;add your code here
    mov cx,3
    lea bx,numbers      
    mov si,0

loop1:
    
    mov al,index+si 
    xlatb         
        
    mov destination+si,al
    inc si
    loop loop1
                                                                             
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
