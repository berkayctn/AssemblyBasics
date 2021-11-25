; multi-segment executable file template.

data segment 
    
    lowOrder db 2 dup(?)
    highOrder db 2 dup(?)
    
ends  


stack segment
    dw   128  dup(0)
ends 


code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    
                        
    push 2244h
    push 3366h  
    
    
    pop ax  ; ax = ah - al 
    
    mov lowOrder[0],al
    mov highOrder[0],ah 
    
    pop ax  ; ax = ah - al
    
    mov lowOrder[1],al
    mov highOrder[1],ah  
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
