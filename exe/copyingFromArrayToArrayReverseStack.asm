; multi-segment executable file template.

;Goal -> Berkay -> yakreB

data segment   
    
     name1 db 'Berkay'
     reverseName1 db 6 dp(?)
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax

    
    lea bx,name1                  
                  
    mov si,0 
    mov di,5             
    mov cx,6
    
loop1:

    push [bx + si]
    inc si
    
    pop ax
    mov reverseName1[di] , al
    dec di
    
    
loop loop1
     
    
    
        
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
