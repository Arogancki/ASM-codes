;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Mon May 09 16:39:36 2016
;--------------------------------------------------------
	.module l10
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TablicaZnakow
	.globl _tablicaAnod
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Licznik::
	.ds 1
_Bufor::
	.ds 4
_count::
	.ds 2
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
	reti
	.ds	7
	ljmp	_timer0
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
;	Z:\Pulpit\SW\lab10\l10.c:12: unsigned char Licznik =0;
	mov	_Licznik,#0x00
;	Z:\Pulpit\SW\lab10\l10.c:14: unsigned int count =0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
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
;	Z:\Pulpit\SW\lab10\l10.c:17: int main(){
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
;	Z:\Pulpit\SW\lab10\l10.c:19: TMOD=1;
	mov	_TMOD,#0x01
;	Z:\Pulpit\SW\lab10\l10.c:20: TH0=czas/256;
	mov	_TH0,#0xD2
;	Z:\Pulpit\SW\lab10\l10.c:21: TL0=czas%256;
	mov	_TL0,#0x20
;	Z:\Pulpit\SW\lab10\l10.c:22: TR0=1;
	setb	_TR0
;	Z:\Pulpit\SW\lab10\l10.c:23: ET0=1;
	setb	_ET0
;	Z:\Pulpit\SW\lab10\l10.c:24: EA=1;
	setb	_EA
;	Z:\Pulpit\SW\lab10\l10.c:26: Bufor[0]=5;
	mov	_Bufor,#0x05
;	Z:\Pulpit\SW\lab10\l10.c:27: Bufor[1]=6;
	mov	(_Bufor + 0x0001),#0x06
;	Z:\Pulpit\SW\lab10\l10.c:28: Bufor[2]=8;
	mov	(_Bufor + 0x0002),#0x08
;	Z:\Pulpit\SW\lab10\l10.c:29: Bufor[3]=9;
	mov	(_Bufor + 0x0003),#0x09
;	Z:\Pulpit\SW\lab10\l10.c:32: while(1);
00102$:
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;------------------------------------------------------------
;	Z:\Pulpit\SW\lab10\l10.c:35: void timer0(void)__interrupt(1)__using(1)
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
	push	acc
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	Z:\Pulpit\SW\lab10\l10.c:37: TH0=czas/256;
	mov	_TH0,#0xD2
;	Z:\Pulpit\SW\lab10\l10.c:38: TL0=czas%256;
	mov	_TL0,#0x20
;	Z:\Pulpit\SW\lab10\l10.c:40: if(++count>50)
	inc	_count
	clr	a
	cjne	a,_count,00109$
	inc	(_count + 1)
00109$:
	clr	c
	mov	a,#0x32
	subb	a,_count
	clr	a
	subb	a,(_count + 1)
	jnc	00105$
;	Z:\Pulpit\SW\lab10\l10.c:42: portAnod= tablicaAnod[Licznik];
	mov	a,_Licznik
	mov	dptr,#_tablicaAnod
	movc	a,@a+dptr
	mov	_P0,a
;	Z:\Pulpit\SW\lab10\l10.c:43: portSek=TablicaZnakow[Bufor[Licznik]];
	mov	a,_Licznik
	add	a,#_Bufor
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	mov	dptr,#_TablicaZnakow
	movc	a,@a+dptr
	mov	_P2,a
;	Z:\Pulpit\SW\lab10\l10.c:44: Licznik++;
	inc	_Licznik
;	Z:\Pulpit\SW\lab10\l10.c:45: if(Licznik >3)Licznik=0;
	mov	a,#0x03
	cjne	a,_Licznik,00111$
00111$:
	jnc	00102$
	mov	_Licznik,#0x00
00102$:
;	Z:\Pulpit\SW\lab10\l10.c:46: count=0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
00105$:
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
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
