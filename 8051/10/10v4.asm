;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Mon May 09 17:34:04 2016
;--------------------------------------------------------
	.module 10v4
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TablicaZnakow
	.globl _tablicaAnod
	.globl _buttonR
	.globl _buttonL
	.globl _timer0
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _flagaR
	.globl _flagaL
	.globl _licznikk
	.globl _Licznik2
	.globl _Liczba
	.globl _count
	.globl _Bufor
	.globl _Licznik
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Licznik::
	.ds 1
_Bufor::
	.ds 4
_count::
	.ds 2
_Liczba::
	.ds 2
_Licznik2::
	.ds 2
_licznikk::
	.ds 2
_flagaL::
	.ds 1
_flagaR::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_buttonL
	.ds	5
	ljmp	_timer0
	.ds	5
	ljmp	_buttonR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	Z:\Pulpit\SW\lab10\10v4.c:13: unsigned char Licznik =0;
	mov	_Licznik,#0x00
;	Z:\Pulpit\SW\lab10\10v4.c:15: unsigned int count =0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
;	Z:\Pulpit\SW\lab10\10v4.c:16: unsigned int Liczba=0;
	clr	a
	mov	_Liczba,a
	mov	(_Liczba + 1),a
;	Z:\Pulpit\SW\lab10\10v4.c:17: unsigned int Licznik2=0;
	clr	a
	mov	_Licznik2,a
	mov	(_Licznik2 + 1),a
;	Z:\Pulpit\SW\lab10\10v4.c:19: unsigned int licznikk=0;
	clr	a
	mov	_licznikk,a
	mov	(_licznikk + 1),a
;	Z:\Pulpit\SW\lab10\10v4.c:23: unsigned char flagaL =0;
	mov	_flagaL,#0x00
;	Z:\Pulpit\SW\lab10\10v4.c:24: unsigned char flagaR =0;
	mov	_flagaR,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	Z:\Pulpit\SW\lab10\10v4.c:26: int main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	Z:\Pulpit\SW\lab10\10v4.c:28: TMOD=1;
	mov	_TMOD,#0x01
;	Z:\Pulpit\SW\lab10\10v4.c:29: TH0=czas/256;
	mov	_TH0,#0xFD
;	Z:\Pulpit\SW\lab10\10v4.c:30: TL0=czas%256;
	mov	_TL0,#0x18
;	Z:\Pulpit\SW\lab10\10v4.c:31: TR0=1;
	setb	_TR0
;	Z:\Pulpit\SW\lab10\10v4.c:32: ET0=1;
	setb	_ET0
;	Z:\Pulpit\SW\lab10\10v4.c:33: EX1=1;
	setb	_EX1
;	Z:\Pulpit\SW\lab10\10v4.c:34: EX0=1;
	setb	_EX0
;	Z:\Pulpit\SW\lab10\10v4.c:35: PT0=1;
	setb	_PT0
;	Z:\Pulpit\SW\lab10\10v4.c:36: EA=1;
	setb	_EA
;	Z:\Pulpit\SW\lab10\10v4.c:38: Bufor[0]=0;
	mov	_Bufor,#0x00
;	Z:\Pulpit\SW\lab10\10v4.c:39: Bufor[1]=0;
	mov	(_Bufor + 0x0001),#0x00
;	Z:\Pulpit\SW\lab10\10v4.c:40: Bufor[2]=0;
	mov	(_Bufor + 0x0002),#0x00
;	Z:\Pulpit\SW\lab10\10v4.c:41: Bufor[3]=0;
	mov	(_Bufor + 0x0003),#0x00
;	Z:\Pulpit\SW\lab10\10v4.c:44: while(1);
00102$:
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;------------------------------------------------------------
;	Z:\Pulpit\SW\lab10\10v4.c:47: void timer0(void)__interrupt(1)__using(1)
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
	ar2 = 0x0a
	ar3 = 0x0b
	ar4 = 0x0c
	ar5 = 0x0d
	ar6 = 0x0e
	ar7 = 0x0f
	ar0 = 0x08
	ar1 = 0x09
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x08
;	Z:\Pulpit\SW\lab10\10v4.c:49: TH0=czas/256;
	mov	_TH0,#0xFD
;	Z:\Pulpit\SW\lab10\10v4.c:50: TL0=czas%256;
	mov	_TL0,#0x18
;	Z:\Pulpit\SW\lab10\10v4.c:52: if(++count>5)
	inc	_count
	clr	a
	cjne	a,_count,00121$
	inc	(_count + 1)
00121$:
	clr	c
	mov	a,#0x05
	subb	a,_count
	clr	a
	subb	a,(_count + 1)
	jc	00122$
	ljmp	00113$
00122$:
;	Z:\Pulpit\SW\lab10\10v4.c:54: portAnod= tablicaAnod[Licznik];
	mov	a,_Licznik
	mov	dptr,#_tablicaAnod
	movc	a,@a+dptr
	mov	_P0,a
;	Z:\Pulpit\SW\lab10\10v4.c:55: portSek=TablicaZnakow[Bufor[Licznik]];
	mov	a,_Licznik
	add	a,#_Bufor
	mov	r0,a
	mov	a,@r0
	mov	dptr,#_TablicaZnakow
	movc	a,@a+dptr
	mov	_P2,a
;	Z:\Pulpit\SW\lab10\10v4.c:56: Licznik++;
	inc	_Licznik
;	Z:\Pulpit\SW\lab10\10v4.c:57: Bufor[3]=(Liczba%10);
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,_Liczba
	mov	dph,(_Liczba + 1)
	mov	psw,#0x00
	lcall	__moduint
	mov	psw,#0x08
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	(_Bufor + 0x0003),r2
;	Z:\Pulpit\SW\lab10\10v4.c:59: if((Liczba%100)/10 == 0)
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,_Liczba
	mov	dph,(_Liczba + 1)
	mov	psw,#0x00
	lcall	__moduint
	mov	psw,#0x08
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	psw,#0x00
	lcall	__divuint
	mov	psw,#0x08
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,r2
	orl	a,r3
	jnz	00102$
;	Z:\Pulpit\SW\lab10\10v4.c:60: Bufor[2]=blank;
	mov	(_Bufor + 0x0002),#0x0A
	sjmp	00103$
00102$:
;	Z:\Pulpit\SW\lab10\10v4.c:62: Bufor[2]=(Liczba%100)/10;
	mov	(_Bufor + 0x0002),r2
00103$:
;	Z:\Pulpit\SW\lab10\10v4.c:63: if((Liczba%1000)/100 == 0)
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_Liczba
	mov	dph,(_Liczba + 1)
	mov	psw,#0x00
	lcall	__moduint
	mov	psw,#0x08
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	psw,#0x00
	lcall	__divuint
	mov	psw,#0x08
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	Z:\Pulpit\SW\lab10\10v4.c:64: Bufor[1]=blank;
	mov	(_Bufor + 0x0001),#0x0A
	sjmp	00106$
00105$:
;	Z:\Pulpit\SW\lab10\10v4.c:66: Bufor[1]=(Liczba%1000)/100;
	mov	(_Bufor + 0x0001),r2
00106$:
;	Z:\Pulpit\SW\lab10\10v4.c:67: if(Liczba/1000 == 0)
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_Liczba
	mov	dph,(_Liczba + 1)
	mov	psw,#0x00
	lcall	__divuint
	mov	psw,#0x08
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,r2
	orl	a,r3
	jnz	00108$
;	Z:\Pulpit\SW\lab10\10v4.c:68: Bufor[0]=blank;
	mov	_Bufor,#0x0A
	sjmp	00109$
00108$:
;	Z:\Pulpit\SW\lab10\10v4.c:70: Bufor[0]=Liczba/1000;
	mov	_Bufor,r2
00109$:
;	Z:\Pulpit\SW\lab10\10v4.c:72: if(Licznik >3)Licznik=0;
	mov	a,#0x03
	cjne	a,_Licznik,00126$
00126$:
	jnc	00111$
	mov	_Licznik,#0x00
00111$:
;	Z:\Pulpit\SW\lab10\10v4.c:73: count=0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
00113$:
;	Z:\Pulpit\SW\lab10\10v4.c:75: flagaL=1;
	mov	_flagaL,#0x01
;	Z:\Pulpit\SW\lab10\10v4.c:76: flagaR=1;
	mov	_flagaR,#0x01
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'buttonL'
;------------------------------------------------------------
;------------------------------------------------------------
;	Z:\Pulpit\SW\lab10\10v4.c:79: void buttonL(void)__interrupt(0)__using(1){
;	-----------------------------------------
;	 function buttonL
;	-----------------------------------------
_buttonL:
	push	acc
	push	psw
	mov	psw,#0x08
;	Z:\Pulpit\SW\lab10\10v4.c:80: TH0=czas/256;
	mov	_TH0,#0xFD
;	Z:\Pulpit\SW\lab10\10v4.c:81: TL0=czas%256;
	mov	_TL0,#0x18
;	Z:\Pulpit\SW\lab10\10v4.c:82: if (flagaL==1)
	mov	a,#0x01
	cjne	a,_flagaL,00105$
;	Z:\Pulpit\SW\lab10\10v4.c:84: flagaL=0;
	mov	_flagaL,#0x00
;	Z:\Pulpit\SW\lab10\10v4.c:85: if(Liczba>0)
	mov	a,_Liczba
	orl	a,(_Liczba + 1)
	jz	00105$
;	Z:\Pulpit\SW\lab10\10v4.c:86: Liczba--;
	dec	_Liczba
	mov	a,#0xff
	cjne	a,_Liczba,00112$
	dec	(_Liczba + 1)
00112$:
00105$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'buttonR'
;------------------------------------------------------------
;------------------------------------------------------------
;	Z:\Pulpit\SW\lab10\10v4.c:90: void buttonR(void)__interrupt(2)__using(1){
;	-----------------------------------------
;	 function buttonR
;	-----------------------------------------
_buttonR:
	push	acc
	push	psw
	mov	psw,#0x08
;	Z:\Pulpit\SW\lab10\10v4.c:91: TH0=czas/256;
	mov	_TH0,#0xFD
;	Z:\Pulpit\SW\lab10\10v4.c:92: TL0=czas%256;
	mov	_TL0,#0x18
;	Z:\Pulpit\SW\lab10\10v4.c:93: if (flagaR==1){
	mov	a,#0x01
	cjne	a,_flagaR,00105$
;	Z:\Pulpit\SW\lab10\10v4.c:94: flagaR=0;
	mov	_flagaR,#0x00
;	Z:\Pulpit\SW\lab10\10v4.c:95: if(Liczba<20)
	clr	c
	mov	a,_Liczba
	subb	a,#0x14
	mov	a,(_Liczba + 1)
	subb	a,#0x00
	jnc	00105$
;	Z:\Pulpit\SW\lab10\10v4.c:96: Liczba++;
	inc	_Liczba
	clr	a
	cjne	a,_Liczba,00112$
	inc	(_Liczba + 1)
00112$:
00105$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
_tablicaAnod:
	.db #0x0E	; 14
	.db #0x0D	; 13
	.db #0x0B	; 11
	.db #0x07	; 7
_TablicaZnakow:
	.db #0x03	; 3
	.db #0x9F	; 159
	.db #0x25	; 37
	.db #0x0D	; 13
	.db #0x99	; 153
	.db #0x49	; 73	I
	.db #0x41	; 65	A
	.db #0x1F	; 31
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0xFF	; 255
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
