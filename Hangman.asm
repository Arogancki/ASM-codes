org 7C00h
    PUSH CS
    POP DS      
   a db 0
   b db 0
   c db 0
   d db 0  
   e db 0
   p db 0
   o db 0
   i db 0
   u db 0  
   y db 0 
   s db 0  
   r db 0   
   st:
   MOV AH, 0Eh
   mov al,24
mov [s],al
   lo: 
   mov al,10  
   INT 10h 
   mov al,[s]
   sub al,1
   mov [s],al
   mov al, [s]
   cmp al,0
   JNZ lo  
   mov al,8
   mov [s],al
	 mov al,1
	mov [p],al
	mov [o],al
	mov [i],al
	mov [u],al
	mov [y],al                        
	mov al, 68
	INT 10h 
	mov al, 97
	INT 10h
	mov al, 106
	INT 10h
	mov al, 32
	INT 10h
	mov al, 72
	INT 10h
	mov al, 97
	INT 10h
	mov al, 115
	INT 10h
	mov al, 108
	INT 10h
	mov al, 111
	INT 10h    
	mov al, 10
	INT 10h   
	 mov AH,00h  
    int 16h 
    MOV [a],al
    mov AH,00h  
    int 16h 
    MOV [b],al
     mov AH,00h  
    int 16h 
    MOV [c],al 
     mov AH,00h  
    int 16h     
    MOV [d],al 
     mov AH,00h  
    int 16h 
    MOV [e],al  
     db:  
  MOV AH, 0Eh
   mov al,10
	INT 10h   
     mov al, [s]
     add al,48
	INT 10h 
     mov al,10
	INT 10h 
    mov al, p
	cmp al,1
	JNZ pn1
	    mov al, 35
	INT 10h 
	pn1:
	 cmp al,2      
     JNZ pn2
	    mov al, [a]
	INT 10h 
	pn2: 
	mov al, o
	cmp al,1
	JNZ on1
	    mov al, 35
	INT 10h 
	on1:
	 cmp al,2      
     JNZ on2
	    mov al, [b]
	INT 10h 
	on2:
	mov al, i
	cmp al,1
	JNZ in1
	    mov al, 35
	INT 10h 
	in1:
	 cmp al,2      
     JNZ in2
	    mov al, [c]
	INT 10h 
	in2:  
	mov al, u
	cmp al,1
	JNZ un1
	    mov al, 35
	INT 10h 
	un1:
	 cmp al,2      
     JNZ un2
	    mov al, [d]
	INT 10h 
	un2:  
	mov al, y
	cmp al,1
	JNZ yn1
	    mov al, 35
	INT 10h 
	yn1:
	 cmp al,2      
     JNZ yn2
	    mov al, [e]
	INT 10h 
	yn2:
	  mov al, 10
	INT 10h  
	mov al,p
	cmp al,1
	JZ graj 
	mov al,o
	cmp al,1
	JZ graj 
	mov al,i
	cmp al,1
	JZ graj 
	mov al,u
	cmp al,1
	JZ graj 
	mov al,y
	cmp al,1
	JZ graj 
	 mov al,0
	 jmp wy
	graj:                    
    mov al, 90
	INT 10h 
     mov al, 103
	INT 10h 
	mov al, 97
	INT 10h 
	mov al, 100
	INT 10h  
	mov al, 117
	INT 10h
	mov al, 106
	INT 10h
	mov al, 10
	INT 10h
	 mov AH,00h  
    int 16h 
    mov [r],al
    cmp al,[a]
    JNZ na
       mov al,2
       mov [p],al 
       mov al,1
       add [s],al
    na:
    mov al,[r]
     cmp al,[b]
    JNZ nb
       mov al,2
       mov [o],al
        mov al,1
       add [s],al
    nb:  
     mov al,[r]
     cmp al,[c]
    JNZ nc
       mov al,2
       mov [i],al 
        mov al,1
       add [s],al
    nc:  
      mov al,[r]
     cmp al,[d]
    JNZ nd
       mov al,2
       mov [u],al 
        mov al,1
       add [s],al
    nd:  
       mov al,[r]
     cmp al,[e]
    JNZ ne
       mov al,2
       mov [y],al
        mov al,1
       add [s],al
    ne:
         mov al,1
         sub [s],al
        
        mov al,[s]
      cmp al,0
      JZ eq       
     jmp db  
     wy:
    mov al, 90
	INT 10h   
	 mov al, 103
	INT 10h 
	 mov al, 97
	INT 10h 
	 mov al, 100
	INT 10h 
	 mov al, 108
	INT 10h 
	 mov al, 101
	INT 10h 
	 mov al, 115
	INT 10h 
	 mov al, 10
	INT 10h 
	INT 10h 
	    mov AH,00h  
    int 16h 
	jmp st
	eq: 
	  MOV AH, 0Eh  
	  mov al, 78
	INT 10h   
	 mov al, 105
	INT 10h 
	 mov al, 101
	INT 10h 
	 mov al, 32
	INT 10h 
	jmp wy
