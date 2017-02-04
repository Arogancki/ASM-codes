#include<8051.h>

#define czas 65536-1000
#define czas2 0x4c
#define portAnod P0
#define portSek P2
#define blank 10

unsigned char __code tablicaAnod[]={0x0E,0x0D,0x0B,0x7};

unsigned char __code TablicaZnakow[]={0x03,0x9f,0x25,0x0d,0x99,0x49,0x41,0x1f,0x01,0x09,0xff};

unsigned char Licznik =0;
unsigned char Bufor[4];
unsigned int count =0;
unsigned int Liczba=0;
unsigned int Liczba2=0;
unsigned char flagaL =0;
unsigned char flagaR =0;

unsigned char LICZ =0;
unsigned char LICZ2 =0;

int main(){

TMOD=1;
TH0=czas/256;
TL0=czas%256;
TR0=1;
ET0=1;


TH1=czas2/256;
TL1=czas2%256;
TR1=1;
ET1=1;

EX1=1;
EX0=1;
PT0=1;
EA=1;

Bufor[0]=0;
Bufor[1]=0;
Bufor[2]=0;
Bufor[3]=0;


while(1);
}


void timer0(void)__interrupt(1)__using(1)
{
TH0=czas/256;
TL0=czas%256;

if(++count>5)
	{
		portAnod= tablicaAnod[Licznik];
		portSek=TablicaZnakow[Bufor[Licznik]];
		Licznik++;
		
		Bufor[0]=Liczba2;
		Bufor[2]=blank;
		Bufor[1]=blank;
		Bufor[3]=Liczba;
		
		if(Licznik >3)Licznik=0;
		count=0;
		
		LICZ++;
		if (LICZ>100)
		{
			 if (flagaL==1)
	 		 {
	 			flagaL=0;
				Liczba2++;
				if (Liczba2>9)
				Liczba2=0;
	 		 }
	 		LICZ=0; 
		}
		
	}
	  flagaL=1;
	  flagaR=1;
}

void timer1(void)__interrupt(3)__using(1)
{
	TH1=czas2/256;
	TL1=czas2%256;
	LICZ2++;
	if (LICZ2>100)
	if (flagaR==1)
	{
	LICZ2=0;
		flagaR=0;
		Liczba++;
		if (Liczba>9)
			Liczba=0;
	}
}



