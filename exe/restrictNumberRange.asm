; multi-segment executable file template.

data segment
   
  numbers1 db 14,28,18,42 
   
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
    
    mov si,0   
    mov cx,4
    
loop1:
            
    and [bx + si],00001111b ;Using the AND operation for db (8 bits) with 0000 1111, we limit numbers to the range 0-15  
    inc si
   
   
loop loop1   
   
   
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
