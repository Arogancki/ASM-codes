	ORG 	0
		JMP 	100

		ORG 	100
	
CZAS_MSB	EQU	4CH
CZAS_LSB	EQU	0
MOV		P2,#0
		
PETLA:
		call	delay_on
		SETB	P2.7
		call	delay_off
		CLR	P2.7
		SJMP	PETLA
		
		
delay_on:
		MOV	R2,#2
		MOV	TMOD,#00000001B
		SETB	TR0
i:
		MOV	TH0,#CZAS_MSB
		MOV	TL0,#CZAS_LSB
		JNB	TF0,$
		CLR	TF0
		DJNZ	R2,i
		CLR	TR0
		ret
		
delay_off:
		MOV	R2,#18
		MOV	TMOD,#00000001B
		SETB	TR0
ii:
		MOV	TH0,#CZAS_MSB
		MOV	TL0,#CZAS_LSB
		JNB	TF0,$
		CLR	TF0
		DJNZ	R2,ii
		CLR	TR0
		ret		
		
		
		END