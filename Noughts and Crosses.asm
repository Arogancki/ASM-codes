
org 7C00h
    PUSH CS
    POP DS     
    ; stworzenie zmiennych
   q db 0
   w db 0
   e db 0 
   a db 0
   s db 0
   d db 0
   z db 0
   x db 0
   c db 0  
   r db 0
    
   ; wydrukowanie "sterowanie od 1 do 9"  
    MOV AH, 0Eh 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h   
    MOV al,83
    INT 10h      
    MOV al,116
    INT 10h
    MOV al,101
    INT 10h
    MOV al,114
    INT 10h
    MOV al,111
    INT 10h
    MOV al,119
    INT 10h
    MOV al,97
    INT 10h
    MOV al,110
    INT 10h
    MOV al,105
    INT 10h
    MOV al,101
    INT 10h
    MOV al,32
    INT 10h
    MOV al,49
    INT 10h
    MOV al,45
    INT 10h
    MOV al,57
    INT 10h
    MOV al,10
    INT 10h
     
    ; wyzerowanie wartosci - nowa gra
    start:     
    mov al,0
    MOV [q],al
    MOV [w],al
    MOV [e],al
    MOV [a],al
    MOV [s],al
    MOV [d],al
    MOV [z],al
    MOV [x],al
    MOV [c],al      
                
    ; drukowanie statusu dla o   
    drukujo: 
    MOV AH, 0Eh  
    mov al, [q]
    cmp al, 0  ; if q==0 wykonaj, jesli nie to skocz
	JNZ drukujoq01
	mov al, 35
	INT 10h
	drukujoq01:
       
        mov al, [q]
    cmp al,1  ; if q==1 wykonaj, jesli nie to skocz
	JNZ drukujoq11
	mov al, 79
	INT 10h
	drukujoq11:  
	    
	     mov al, [q]
	cmp al, 2  ; if q==2 wykonaj, jesli nie to skocz
	JNZ drukujoq21
	mov al, 88
	INT 10h
	drukujoq21:      
	       
	        mov al, [w]
	cmp al, 0  ; if w==0 wykonaj, jesli nie to skocz
	JNZ drukujow01
	mov al, 35
	INT 10h
	drukujow01:
         
          mov al, [w]
    cmp al,1  ; if w==1 wykonaj, jesli nie to skocz
	JNZ drukujow11
	mov al, 79
	INT 10h
	drukujow11:  
	   
	    mov al, [w]
	cmp al, 2  ; if w==2 wykonaj, jesli nie to skocz
	JNZ drukujow21
	mov al, 88
	INT 10h
	drukujow21: 
	 
	  mov al, [e]
	cmp al, 0  ; if e==0 wykonaj, jesli nie to skocz
	JNZ drukujoe01
	mov al, 35
	INT 10h
	drukujoe01:
         
          mov al, [e]
    cmp al,1  ; if e==1 wykonaj, jesli nie to skocz
	JNZ drukujoe11
	mov al, 79
	INT 10h
	drukujoe11:  
	      
	       mov al, [e]
	cmp al, 2  ; if e==2 wykonaj, jesli nie to skocz
	JNZ drukujoe21
	mov al, 88
	INT 10h
	drukujoe21:       
	
	mov al, 10
	INT 10h
	    
	     mov al, [a]
	cmp al, 0  ; if a==0 wykonaj, jesli nie to skocz
	JNZ drukujoa01
	mov al, 35
	INT 10h
	drukujoa01:
           
           mov al, [a]
    cmp al,1  ; if a==1 wykonaj, jesli nie to skocz
	JNZ drukujoa11
	mov al, 79
	INT 10h
	drukujoa11:  
	  
	  mov al, [a]
	cmp al, 2  ; if a==2 wykonaj, jesli nie to skocz
	JNZ drukujoa21
	mov al, 88
	INT 10h
	drukujoa21: 
	      
	      mov al, [s]
	cmp al, 0  ; if s==0 wykonaj, jesli nie to skocz
	JNZ drukujos01
	mov al, 35
	INT 10h
	drukujos01:
           
             mov al, [s]
    cmp al,1  ; if s==1 wykonaj, jesli nie to skocz
	JNZ drukujos11
	mov al, 79
	INT 10h
	drukujos11:  
	
	  mov al, [s]
	cmp al, 2  ; if s==2 wykonaj, jesli nie to skocz
	JNZ drukujos21
	mov al, 88
	INT 10h
	drukujos21: 
	   
	     mov al, [d]
	cmp al, 0  ; if d==0 wykonaj, jesli nie to skocz
	JNZ drukujod01
	mov al, 35
	INT 10h
	drukujod01:
    
    mov al, [d]
    cmp al, 1  ; if d==1 wykonaj, jesli nie to skocz
	JNZ drukujod11
	mov al, 79
	INT 10h
	drukujod11:  
	    
	    mov al, [d]
	cmp al, 2  ; if d==2 wykonaj, jesli nie to skocz
	JNZ drukujod21
	mov al, 88
	INT 10h
	drukujod21:    
	
	mov al, 10
	INT 10h
	  
	  mov al, [z]
	cmp al, 0  ; if z==0 wykonaj, jesli nie to skocz
	JNZ drukujoz01
	mov al, 35
	INT 10h
	drukujoz01:
     
      mov al, [z]
    cmp al,1  ; if z==1 wykonaj, jesli nie to skocz
	JNZ drukujoz11
	mov al, 79
	INT 10h
	drukujoz11:  
	   
	    mov al, [z]
	cmp al, 2  ; if z==2 wykonaj, jesli nie to skocz
	JNZ drukujoz21
	mov al, 88
	INT 10h
	drukujoz21:   
	
	 mov al, [x]
	cmp al, 0  ; if x==0 wykonaj, jesli nie to skocz
	JNZ drukujox01
	mov al, 35
	INT 10h
	drukujox01:
    
     mov al, [x]
    cmp al, 1  ; if x==1 wykonaj, jesli nie to skocz
	JNZ drukujox11
	mov al, 79
	INT 10h
	drukujox11:  
	
	 mov al, [x]
	cmp al, 2  ; if x==2 wykonaj, jesli nie to skocz
	JNZ drukujox21
	mov al, 88
	INT 10h
	drukujox21:  
	
	 mov al, [c]
	cmp al, 0  ; if c==0 wykonaj, jesli nie to skocz
	JNZ drukujoc01
	mov al, 35
	INT 10h
	drukujoc01:
    
    mov al, [c]
    cmp al,1  ; if c==1 wykonaj, jesli nie to skocz
	JNZ drukujoc11
	mov al, 79
	INT 10h
	drukujoc11:  
	   
	   mov al, [c]
	cmp al, 2  ; if c==2 wykonaj, jesli nie to skocz
	JNZ drukujoc21
	mov al, 88
	INT 10h
	drukujoc21:       
	
	mov al, 10
	INT 10h
       
    mov al, [q]   
    cmp al, 0 
	JZ rucho  
	mov al, [w]
	cmp al, 0 
	JZ rucho 
	mov al, [e]
    cmp al, 0 
	JZ rucho  
	mov al, [a]
    cmp al, 0 
	JZ rucho  
	mov al, [s]
	cmp al, 0 
	JZ rucho 
	mov al, [d]
	cmp al, 0 
	JZ rucho
	mov al, [z]
	cmp al, 0 
	JZ rucho 
	mov al, [x]
	cmp al, 0 
	JZ rucho 
	mov al, [c]
	cmp al, 0 
	JZ rucho
	JMP remis
	
	 ; drukowanie statusu dla x   
    drukujx: 
    MOV AH, 0Eh  
    mov al,[q]
    cmp al, 0  ; if q==0 wykonaj, jesli nie to skocz
	JNZ drukujxq01
	mov al, 35
	INT 10h
	drukujxq01:
    
     mov al,[q]
    cmp al,1  ; if q==1 wykonaj, jesli nie to skocz
	JNZ drukujxq11
	mov al, 79
	INT 10h
	drukujxq11:  
	 
	  mov al,[q]
	cmp al, 2  ; if q==2 wykonaj, jesli nie to skocz
	JNZ drukujxq21
	mov al, 88
	INT 10h
	drukujxq21:      
	
	 mov al,[w]
	cmp al, 0  ; if w==0 wykonaj, jesli nie to skocz
	JNZ drukujxw01
	mov al, 35
	INT 10h
	drukujxw01:
        
         mov al,[w]
    cmp al,1  ; if w==1 wykonaj, jesli nie to skocz
	JNZ drukujxw11
	mov al, 79
	INT 10h
	drukujxw11:  
	   
	    mov al,[w]
	cmp al, 2  ; if w==2 wykonaj, jesli nie to skocz
	JNZ drukujxw21
	mov al, 88
	INT 10h
	drukujxw21: 
	   
	    mov al,[e]
	cmp al, 0  ; if e==0 wykonaj, jesli nie to skocz
	JNZ drukujxe01
	mov al, 35
	INT 10h
	drukujxe01:
       
        mov al,[e]
    cmp al,1  ; if e==1 wykonaj, jesli nie to skocz
	JNZ drukujxe11
	mov al, 79
	INT 10h
	drukujxe11:  
	   
	    mov al,[e]
	cmp al, 2  ; if e==2 wykonaj, jesli nie to skocz
	JNZ drukujxe21
	mov al, 88
	INT 10h
	drukujxe21:       
	
	mov al, 10
	INT 10h
	   
	    mov al,[a]
	cmp al, 0  ; if a==0 wykonaj, jesli nie to skocz
	JNZ drukujxa01
	mov al, 35
	INT 10h
	drukujxa01:
    
    mov al,[a]
    cmp al,1  ; if a==1 wykonaj, jesli nie to skocz
	JNZ drukujxa11
	mov al, 79
	INT 10h
	drukujxa11:  
	 
	 mov al,[a]
	cmp al, 2  ; if a==2 wykonaj, jesli nie to skocz
	JNZ drukujxa21
	mov al, 88
	INT 10h
	drukujxa21: 
	 
	 mov al,[s]
	cmp al, 0  ; if s==0 wykonaj, jesli nie to skocz
	JNZ drukujxs01
	mov al, 35
	INT 10h
	drukujxs01:
      
       mov al,[s]
    cmp al,1  ; if s==1 wykonaj, jesli nie to skocz
	JNZ drukujxs11
	mov al, 79
	INT 10h
	drukujxs11:  
	  
	   mov al,[s]
	cmp al, 2  ; if s==2 wykonaj, jesli nie to skocz
	JNZ drukujxs21
	mov al, 88
	INT 10h
	drukujxs21: 
	 
	  mov al,[d]
	cmp al, 0  ; if d==0 wykonaj, jesli nie to skocz
	JNZ drukujxd01
	mov al, 35
	INT 10h
	drukujxd01:
        
         mov al,[d]
    cmp al,1  ; if d==1 wykonaj, jesli nie to skocz
	JNZ drukujxd11
	mov al, 79
	INT 10h
	drukujxd11:  
	  
	   mov al,[d]
	cmp al, 2  ; if d==2 wykonaj, jesli nie to skocz
	JNZ drukujxd21
	mov al, 88
	INT 10h
	drukujxd21:    
	
	mov al, 10
	INT 10h
	 
	  mov al,[z]
	cmp al, 0  ; if z==0 wykonaj, jesli nie to skocz
	JNZ drukujxz01
	mov al, 35
	INT 10h
	drukujxz01:
    
     mov al,[z]
    cmp al,1  ; if z==1 wykonaj, jesli nie to skocz
	JNZ drukujxz11
	mov al, 79
	INT 10h
	drukujxz11:  
	  
	   mov al,[z]
	cmp al, 2  ; if z==2 wykonaj, jesli nie to skocz
	JNZ drukujxz21
	mov al, 88
	INT 10h
	drukujxz21:   
	  
	   mov al,[x]
	cmp al, 0  ; if x==0 wykonaj, jesli nie to skocz
	JNZ drukujxx01
	mov al, 35
	INT 10h
	drukujxx01:
     
      mov al,[x]
    cmp al,1  ; if x==1 wykonaj, jesli nie to skocz
	JNZ drukujxx11
	mov al, 79
	INT 10h
	drukujxx11:  
	
	 mov al,[x]
	cmp al, 2  ; if x==2 wykonaj, jesli nie to skocz
	JNZ drukujxx21
	mov al, 88
	INT 10h
	drukujxx21:  
	  
	   mov al,[c]
	cmp al, 0  ; if c==0 wykonaj, jesli nie to skocz
	JNZ drukujxc01
	mov al, 35
	INT 10h
	drukujxc01:
     
     mov al,[c]
    cmp al,1  ; if c==1 wykonaj, jesli nie to skocz
	JNZ drukujxc11
	mov al, 79
	INT 10h
	drukujxc11:  
	  
	  mov al,[c]
	cmp al, 2  ; if c==2 wykonaj, jesli nie to skocz
	JNZ drukujxc21
	mov al, 88
	INT 10h
	drukujxc21:       
	
	mov al, 10
	INT 10h
    
    mov al, [q]   
    cmp al, 0 
	JZ ruchx  
	mov al, [w]
	cmp al, 0 
	JZ ruchx  
	mov al, [e]
    cmp al, 0 
	JZ ruchx   
	mov al, [a]
    cmp al, 0 
	JZ ruchx  
	mov al, [s]
	cmp al, 0 
	JZ ruchx  
	mov al, [d]
	cmp al, 0 
	JZ ruchx 
	mov al, [z]
	cmp al, 0 
	JZ ruchx 
	mov al, [x]
	cmp al, 0 
	JZ ruchx 
	mov al, [c]
	cmp al, 0 
	JZ ruchx 
	JMP remis
	     
	     
	; tura o     
	rucho:  
	; napis wstaw kolko
	MOV AH, 0Eh 
	mov al, 10
	INT 10h
	mov al, 87
	INT 10h
	mov al, 115
	INT 10h
	mov al, 116
	INT 10h
	mov al, 97
	INT 10h
	mov al, 119
	INT 10h
	mov al, 32
	INT 10h
	mov al, 107
	INT 10h
	mov al, 111
	INT 10h
	mov al, 108
	INT 10h
	mov al, 107
	INT 10h
	mov al, 111
	INT 10h 
	mov al, 10
	INT 10h
	
	mov al,0   
	mov [r],al                  
	mov AH,00h  
    int 16h ; do al trafia kod ascii
    mov [r],al          
	 
	mov al,[r]
	cmp al, 55  ; czy r to 7  ?
	JNZ rn7o 
	mov al,[q]
	cmp al, 0  ; czy q jest zajete
	JZ qnzo
	JMP zajeteo    ;zajete
	qnzo:   
	mov al,1     ; nie zajete
	mov [q],al
	JMP czyo  
	rn7o:           ; r to nie 7  
	   
	mov al,[r]
	cmp al, 56  ; czy r to 8  ?
	JNZ rn8o  
	mov al,[w]
	cmp al, 0  ; czy w jest zajete
	JZ wnzo
	JMP zajeteo    ;zajete
	wnzo:        ; nie zajete
	mov al,1     ; nie zajete
	mov [w],al
	JMP czyo  
	rn8o:           ; r to nie 8   
	
	mov al,[r]
	cmp al, 57  ; czy r to 9  ?
	JNZ rn9o    
	mov al,[e]
	cmp al, 0  ; czy w jest zajete
	JZ enzo
	JMP zajeteo    ;zajete
	enzo:        ; nie zajete
	mov al,1     ; nie zajete
	mov [e],al
	JMP czyo  
	rn9o:           ; r to nie 9   
	
	mov al,[r]
	cmp al, 52  ; czy r to 4  ?
	JNZ rn4o    
	mov al,[a]
	cmp al, 0  ; czy w jest zajete
	JZ anzo
	JMP zajeteo    ;zajete
	anzo:        ; nie zajete
	mov al,1     ; nie zajete
	mov [a],al
	JMP czyo  
	rn4o:           ; r to nie 4     
	
	mov al,[r]
	cmp al, 53  ; czy r to 5  ?
	JNZ rn5o                  
	mov al,[s]
	cmp al, 0  ; czy w jest zajete
	JZ snzo
	JMP zajeteo    ;zajete
	snzo:        ; nie zajete
	mov al,1     ; nie zajete
	mov [s],al
	JMP czyo  
	rn5o:           ; r to nie 5  
	
	mov al,[r]
	cmp al, 54  ; czy r to 6  ?
	JNZ rn6o  
	mov al,[d]
	cmp al, 0  ; czy w jest zajete
	JZ dnzo
	JMP zajeteo    ;zajete
	dnzo:        ; nie zajete
	mov al,1     ; nie zajete
	mov [d],al
	JMP czyo  
	rn6o:           ; r to nie 6  
	
	mov al,[r]
	cmp al, 49  ; czy r to 1  ?
	JNZ rn1o 
	mov al,[z]
	cmp al, 0  ; czy w jest zajete
	JZ znzo
	JMP zajeteo    ;zajete
	znzo:        ; nie zajete
	mov al,1     ; nie zajete
	mov [z],al
	JMP czyo  
	rn1o:           ; r to nie 1  
	
	mov al,[r]
	cmp al, 50  ; czy r to 2  ?
	JNZ rn2o 
	mov al,[x]
	cmp al, 0  ; czy w jest zajete
	JZ xnzo
	JMP zajeteo    ;zajete
	xnzo:        ; nie zajete
	mov al,1     ; nie zajete
	mov [x],al
	JMP czyo  
	rn2o:           ; r to nie 2 
	
	mov al,[r]
	cmp al, 51  ; czy r to 3  ?
	JNZ rn3o  
	mov al,[c]
	cmp al, 0  ; czy w jest zajete
	JZ cnzo
	JMP zajeteo    ;zajete
	cnzo:        ; nie zajete
	mov al,1     ; nie zajete
	mov [c],al
	JMP czyo  
	rn3o:           ; r to nie 3
	
	; wydruk napisu niemozelie
	MOV AH, 0Eh 
	mov al, 78
	INT 10h 
	mov al, 105
	INT 10h
	mov al, 101
	INT 10h
	mov al, 109
	INT 10h
	mov al, 111
	INT 10h
	mov al, 122
	INT 10h
	mov al, 108
	INT 10h
	mov al, 105
	INT 10h
	mov al, 119
	INT 10h
	mov al, 101
	INT 10h
	mov al, 10
	INT 10h
	JMP rucho
	
	; ruch x - tura x
	ruchx:  
	; napis wstaw krzyzyko
	MOV AH, 0Eh 
	mov al, 10
	INT 10h
	mov al, 87
	INT 10h
	mov al, 115
	INT 10h
	mov al, 116
	INT 10h
	mov al, 97
	INT 10h
	mov al, 119
	INT 10h
	mov al, 32
	INT 10h
	mov al, 107
	INT 10h
	mov al, 114
	INT 10h
	mov al, 122
	INT 10h
	mov al, 121
	INT 10h
	mov al, 122
	INT 10h  
	mov al, 121
	INT 10h 
	mov al, 107
	INT 10h 
	mov al, 10
	INT 10h
	 
	mov al,0
	mov [r],al                     
	mov AH,00h  
    int 16h ; do al trafia kod ascii 
	mov [r],al
	
	mov al,[r]
	cmp al, 55  ; czy r to 7  ?
	JNZ rn7x    
	mov al,[q]
	cmp al, 0  ; czy q jest zajete
	JZ qnzx
	JMP zajetex    ;zajete
	qnzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [q],al
	JMP czyx  
	rn7x:           ; r to nie 7  
	
	mov al,[r]
	cmp al, 56  ; czy r to 8  ?
	JNZ rn8x     
	mov al,[w]
	cmp al, 0  ; czy w jest zajete
	JZ wnzx
	JMP zajetex    ;zajete
	wnzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [w],al
	JMP czyx  
	rn8x:           ; r to nie 8   
	
	mov al,[r]
	cmp al, 57  ; czy r to 9  ?
	JNZ rn9x  
	mov al,[e]
	cmp al, 0  ; czy w jest zajete
	JZ enzx
	JMP zajetex    ;zajete
	enzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [e],al
	JMP czyx  
	rn9x:           ; r to nie 9   
	
	mov al,[r]
	cmp al, 52  ; czy r to 4  ?
	JNZ rn4x   
	mov al,[a]
	cmp al, 0  ; czy w jest zajete
	JZ anzx
	JMP zajetex    ;zajete
	anzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [a],al
	JMP czyx  
	rn4x:           ; r to nie 4     
	
	mov al,[r]
	cmp al, 53  ; czy r to 5  ?
	JNZ rn5x  
	mov al,[s]
	cmp al, 0  ; czy w jest zajete
	JZ snzx
	JMP zajetex    ;zajete
	snzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [s],al
	JMP czyx  
	rn5x:           ; r to nie 5  
	
	mov al,[r]
	cmp al, 54  ; czy r to 6  ?
	JNZ rn6x  
	mov al,[d]
	cmp al, 0  ; czy w jest zajete
	JZ dnzx
	JMP zajetex    ;zajete
	dnzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [d],al
	JMP czyx  
	rn6x:           ; r to nie 6  
	
	mov al,[r]
	cmp al, 49  ; czy r to 1  ?
	JNZ rn1x      
	mov al,[z]
	cmp al, 0  ; czy w jest zajete
	JZ znzx
	JMP zajetex    ;zajete
	znzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [z],al
	JMP czyx  
	rn1x:           ; r to nie 1  
	 
	 mov al,[r]
	cmp al, 50  ; czy r to 2  ?
	JNZ rn2x      
	mov al,[x]
	cmp al, 0  ; czy w jest zajete
	JZ xnzx
	JMP zajetex    ;zajete
	xnzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [x],al
	JMP czyx  
	rn2x:           ; r to nie 2 
	
	mov al,[r]
	cmp al, 51  ; czy r to 3  ?
	JNZ rn3x  
	mov al,[c]
	cmp al, 0  ; czy w jest zajete
	JZ cnzx
	JMP zajetex    ;zajete
	cnzx:        ; nie zajete
	mov al,2    ; nie zajete
	mov [c],al
	JMP czyx  
	rn3x:           ; r to nie 3
	
	; wydruk napisu niemozelie
	MOV AH, 0Eh 
	mov al, 78
	INT 10h 
	mov al, 105
	INT 10h
	mov al, 101
	INT 10h
	mov al, 109
	INT 10h
	mov al, 111
	INT 10h
	mov al, 122
	INT 10h
	mov al, 108
	INT 10h
	mov al, 105
	INT 10h
	mov al, 119
	INT 10h
	mov al, 101
	INT 10h
	mov al, 10
	INT 10h
	JMP ruchx
	
	zajeteo:
	MOV AH, 0Eh 
	mov al, 90
	INT 10h 
	mov al, 97
	INT 10h 
	mov al, 106
	INT 10h 
	mov al, 101
	INT 10h 
	mov al, 116
	INT 10h 
	mov al, 101
	INT 10h 
	mov al, 33
	INT 10h 
	mov al, 10
	INT 10h 
	JMP rucho  
	
	zajetex:
	MOV AH, 0Eh 
	mov al, 90
	INT 10h 
	mov al, 97
	INT 10h 
	mov al, 106
	INT 10h 
	mov al, 101
	INT 10h 
	mov al, 116
	INT 10h 
	mov al, 101
	INT 10h 
	mov al, 33
	INT 10h 
	mov al, 10
	INT 10h 
	JMP ruchx    
	
	remis:
	MOV AH, 0Eh 
	mov al, 82
	INT 10h 
	mov al, 101
	INT 10h 
	mov al, 109
	INT 10h 
	mov al, 105
	INT 10h 
	mov al, 115
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h
	mov al, 83
	INT 10h
	mov al, 112
	INT 10h
	mov al, 114
	INT 10h
	mov al, 111
	INT 10h
	mov al, 98
	INT 10h
	mov al, 117
	INT 10h
	mov al, 106
	INT 10h
	mov al, 32
	INT 10h
	mov al, 111
	INT 10h
	mov al, 100
	INT 10h
	mov al, 32
	INT 10h
	mov al, 110
	INT 10h
	mov al, 111
	INT 10h
	mov al, 119
	INT 10h  
	mov al, 97
	INT 10h
	mov al, 10
	INT 10h  
	JMP start    
	
	wygralx:
	MOV AH, 0Eh 
	mov al, 87
	INT 10h 
	mov al, 121
	INT 10h 
	mov al, 103
	INT 10h 
	mov al, 114
	INT 10h 
	mov al, 121
	INT 10h 
	mov al, 119
	INT 10h   
	mov al, 97
	INT 10h 
	mov al, 32
	INT 10h 
	mov al, 88
	INT 10h 
	mov al, 10 
	INT 10h 
	JMP end   
	
	wygralo:
	MOV AH, 0Eh 
	mov al, 87
	INT 10h 
	mov al, 121
	INT 10h 
	mov al, 103
	INT 10h 
	mov al, 114
	INT 10h 
	mov al, 121
	INT 10h 
	mov al, 119
	INT 10h   
	mov al, 97
	INT 10h 
	mov al, 32
	INT 10h 
	mov al, 79
	INT 10h 
	mov al, 10
	INT 10h 
	JMP end
	
	end:
	MOV AH, 0Eh  
	
	mov al,[q]
    cmp al, 0  ; if q==0 wykonaj, jesli nie to skocz
	JNZ drukujeq01
	mov al, 35
	INT 10h
	drukujeq01:
     
     mov al,[q]
    cmp al,1  ; if q==1 wykonaj, jesli nie to skocz
	JNZ drukujeq11
	mov al, 79
	INT 10h
	drukujeq11:  
	  
	  mov al,[q]
	cmp al, 2  ; if q==2 wykonaj, jesli nie to skocz
	JNZ drukujeq21
	mov al, 88
	INT 10h
	drukujeq21:      
	     
	     mov al,[w]
	cmp al, 0  ; if w==0 wykonaj, jesli nie to skocz
	JNZ drukujew01
	mov al, 35
	INT 10h
	drukujew01:
     
       mov al,[w]
    cmp al,1  ; if w==1 wykonaj, jesli nie to skocz
	JNZ drukujew11
	mov al, 79
	INT 10h
	drukujew11:  
	 
	   mov al,[w]
	cmp al, 2  ; if w==2 wykonaj, jesli nie to skocz
	JNZ drukujew21
	mov al, 88
	INT 10h
	drukujew21: 
	   
	     mov al,[e]
	cmp al, 0  ; if e==0 wykonaj, jesli nie to skocz
	JNZ drukujee01
	mov al, 35
	INT 10h
	drukujee01:
    
      mov al,[e]
    cmp al,1  ; if e==1 wykonaj, jesli nie to skocz
	JNZ drukujee11
	mov al, 79
	INT 10h
	drukujee11:  
	  
	    mov al,[e]
	cmp al, 2  ; if e==2 wykonaj, jesli nie to skocz
	JNZ drukujee21
	mov al, 88
	INT 10h
	drukujee21:       
	
	mov al, 10
	INT 10h
	  
	    mov al,[a]
	cmp al, 0  ; if a==0 wykonaj, jesli nie to skocz
	JNZ drukujea01
	mov al, 35
	INT 10h
	drukujea01:
    
      mov al,[a]
    cmp al,1  ; if a==1 wykonaj, jesli nie to skocz
	JNZ drukujea11
	mov al, 79
	INT 10h
	drukujea11:  
	    
	      mov al,[a]
	cmp al, 2  ; if a==2 wykonaj, jesli nie to skocz
	JNZ drukujea21
	mov al, 88
	INT 10h
	drukujea21: 
	  
	    mov al,[s]
	cmp al, 0  ; if s==0 wykonaj, jesli nie to skocz
	JNZ drukujes01
	mov al, 35
	INT 10h
	drukujes01:
       
        mov al,[s]
    cmp al,1  ; if s==1 wykonaj, jesli nie to skocz
	JNZ drukujes11
	mov al, 79
	INT 10h
	drukujes11:  
	   
	    mov al,[s]
	cmp al, 2  ; if s==2 wykonaj, jesli nie to skocz
	JNZ drukujes21
	mov al, 88
	INT 10h
	drukujes21: 
	 
	  mov al,[d]
	cmp al, 0  ; if d==0 wykonaj, jesli nie to skocz
	JNZ drukujed01
	mov al, 35
	INT 10h
	drukujed01:
         
          mov al,[d]
    cmp al,1  ; if d==1 wykonaj, jesli nie to skocz
	JNZ drukujed11
	mov al, 79
	INT 10h
	drukujed11:  
	 
	  mov al,[d]
	cmp al, 2  ; if d==2 wykonaj, jesli nie to skocz
	JNZ drukujed21
	mov al, 88
	INT 10h
	drukujed21:    
	
	mov al, 10
	INT 10h
	   
	    mov al,[z]
	cmp al, 0  ; if z==0 wykonaj, jesli nie to skocz
	JNZ drukujez01
	mov al, 35
	INT 10h
	drukujez01:
       
        mov al,[z]
    cmp al,1  ; if z==1 wykonaj, jesli nie to skocz
	JNZ drukujez11
	mov al, 79
	INT 10h
	drukujez11:  
	     
	      mov al,[z]
	cmp al, 2  ; if z==2 wykonaj, jesli nie to skocz
	JNZ drukujez21
	mov al, 88
	INT 10h
	drukujez21:   
	
	 mov al,[x]
	cmp al, 0  ; if x==0 wykonaj, jesli nie to skocz
	JNZ drukujex01
	mov al, 35
	INT 10h
	drukujex01:
         
          mov al,[x]
    cmp al,1  ; if x==1 wykonaj, jesli nie to skocz
	JNZ drukujex11
	mov al, 79
	INT 10h
	drukujex11:  
	    
	     mov al,[x]
	cmp al, 2  ; if x==2 wykonaj, jesli nie to skocz
	JNZ drukujex21
	mov al, 88
	INT 10h
	drukujex21:  
	  
	   mov al,[c]
	cmp al, 0  ; if c==0 wykonaj, jesli nie to skocz
	JNZ drukujec01
	mov al, 35
	INT 10h
	drukujec01:
        
         mov al,[c]
    cmp al,1  ; if c==1 wykonaj, jesli nie to skocz
	JNZ drukujec11
	mov al, 79
	INT 10h
	drukujec11:  
	    
	     mov al,[c]
	cmp al, 2  ; if c==2 wykonaj, jesli nie to skocz
	JNZ drukujec21
	mov al, 88
	INT 10h
	drukujec21:   
	   
	   ; napis sprobuj od nowa
    MOV AH, 0Eh 
	mov al, 10
	INT 10h   
	mov al, 10
	INT 10h
	mov al, 83
	INT 10h
	mov al, 112
	INT 10h
	mov al, 114
	INT 10h
	mov al, 111
	INT 10h
	mov al, 98
	INT 10h
	mov al, 117
	INT 10h
	mov al, 106
	INT 10h
	mov al, 32
	INT 10h
	mov al, 111
	INT 10h
	mov al, 100
	INT 10h
	mov al, 32
	INT 10h
	mov al, 110
	INT 10h
	mov al, 111
	INT 10h
	mov al, 119
	INT 10h  
	mov al, 97
	INT 10h
	mov al, 10
	INT 10h  
	JMP start
	
	czyo:       
	MOV AH, 0Eh 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h   
	
	mov al,q
	cmp al, 1  
	JNZ czyo1  
	    mov al,a  
	    cmp al, 1  
    	JNZ czyo12 
    	    mov al,z  
    	    cmp al, 1  
         	JNZ czyo13   
         	mov al,0
         	JMP wygralo
	czyo1:
	czyo13: 
	czyo12:  
	
	mov al,w
	cmp al, 1  
	JNZ czyo2  
	    mov al,s  
	    cmp al, 1  
    	JNZ czyo22 
    	    mov al,x  
    	    cmp al, 1  
         	JNZ czyo23 
         	mov al,0 
         	JMP wygralo
	czyo2:
	czyo23: 
	czyo22: 
	
	mov al,e
	cmp al, 1  
	JNZ czyo3  
	    mov al,d  
	    cmp al, 1  
    	JNZ czyo32 
    	    mov al,c 
    	    cmp al, 1  
         	JNZ czyo33  
         	mov al,0
         	JMP wygralo
	czyo3:
	czyo33: 
	czyo32:            
	
	mov al,q
	cmp al, 1  
	JNZ czyo4 
	    mov al,w  
	    cmp al, 1  
    	JNZ czyo42 
    	    mov al,e 
    	    cmp al, 1  
         	JNZ czyo43   
         	mov al,0
         	JMP wygralo
	czyo4:
	czyo43: 
	czyo42: 
	
	mov al,a
	cmp al, 1  
	JNZ czyo5  
	    mov al,s  
	    cmp al, 1  
    	JNZ czyo52 
    	    mov al,d 
    	    cmp al, 1  
         	JNZ czyo53  
         	mov al,0
         	JMP wygralo
	czyo5:
	czyo53: 
	czyo52:        
	
	mov al,z
	cmp al, 1  
	JNZ czyo6  
	    mov al,x  
	    cmp al, 1  
    	JNZ czyo62 
    	    mov al,c 
    	    cmp al, 1  
         	JNZ czyo63
         	mov al,0  
         	JMP wygralo
	czyo6:
	czyo63: 
	czyo62: 
	
    mov al,q
	cmp al, 1  
	JNZ czyo7  
	    mov al,s  
	    cmp al, 1  
    	JNZ czyo72 
    	    mov al,c 
    	    cmp al, 1  
         	JNZ czyo73  
         	mov al,0
         	JMP wygralo
	czyo7:
	czyo73: 
	czyo72: 
	
	mov al,e
	cmp al, 1  
	JNZ czyo8  
	    mov al,s  
	    cmp al, 1  
    	JNZ czyo82 
    	    mov al,z 
    	    cmp al, 1  
         	JNZ czyo83  
         	mov al,0
         	JMP wygralo
	czyo8:
	czyo83: 
	czyo82:
	
	JMP drukujx;    
	
	czyx:       
	MOV AH, 0Eh 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h 
	mov al, 10
	INT 10h     
	
	mov al,q
	cmp al, 2 
	JNZ czyx1  
	    mov al,a  
	    cmp al, 2 
    	JNZ czyx12 
    	    mov al,z  
    	    cmp al, 2  
         	JNZ czyx13    
         	mov al,0
         	JMP wygralx
	czyx1:
	czyx13: 
	czyx12:   
	
	mov al,w
	cmp al, 2 
	JNZ czyx2 
	    mov al,s  
	    cmp al, 2 
    	JNZ czyx22 
    	    mov al,x  
    	    cmp al, 2  
         	JNZ czyx23    
         	mov al,0
         	JMP wygralx
	czyx2:
	czyx23: 
	czyx22: 
	
	mov al,e
	cmp al, 2 
	JNZ czyx3  
	    mov al,d  
	    cmp al, 2 
    	JNZ czyx32 
    	    mov al,c  
    	    cmp al, 2  
         	JNZ czyx33    
         	mov al,0
         	JMP wygralx
	czyx3:
	czyx33: 
	czyx32:          
	
	mov al,q
	cmp al, 2 
	JNZ czyx4  
	    mov al,w  
	    cmp al, 2 
    	JNZ czyx42 
    	    mov al,e
    	    cmp al, 2  
         	JNZ czyx43    
         	mov al,0
         	JMP wygralx
	czyx4:
	czyx43: 
	czyx42: 
	
	mov al,a
	cmp al, 2 
	JNZ czyx5  
	    mov al,s  
	    cmp al, 2 
    	JNZ czyx52 
    	    mov al,d  
    	    cmp al, 2  
         	JNZ czyx53    
         	mov al,0
         	JMP wygralx
	czyx5:
	czyx53: 
	czyx52:         
	
	mov al,z
	cmp al, 2 
	JNZ czyx6  
	    mov al,x  
	    cmp al, 2 
    	JNZ czyx62 
    	    mov al,c  
    	    cmp al, 2  
         	JNZ czyx63    
         	mov al,0
         	JMP wygralx
	czyx6:
	czyx63: 
	czyx62: 
	
	mov al,q
	cmp al, 2 
	JNZ czyx7  
	    mov al,s  
	    cmp al, 2 
    	JNZ czyx72 
    	    mov al,c  
    	    cmp al, 2  
         	JNZ czyx73    
         	mov al,0
         	JMP wygralx
	czyx7:
	czyx73: 
	czyx72:   
	
	mov al,e
	cmp al, 2 
	JNZ czyx8  
	    mov al,s  
	    cmp al, 2 
    	JNZ czyx82 
    	    mov al,z  
    	    cmp al, 2  
         	JNZ czyx83    
         	mov al,0
         	JMP wygralx
	czyx8:
	czyx83: 
	czyx82:  
	
	
	JMP drukujo;
