#include<8051.h>

#define czas 65536-1000
#define portAnod P0
#define portSek P2
#define blank 10

unsigned char __code tablicaAnod[]={0x0E,0x0D,0x0B,0x7};

unsigned char __code TablicaZnakow[]={0x03,0x9f,0x25,0x0d,0x99,0x49,0x41,0x1f,0x01,0x09,0xff};

unsigned char Licznik =0;
unsigned char Bufor[4];
unsigned int count =0;


int main(){

TMOD=1;
TH0=czas/256;
TL0=czas%256;
TR0=1;
ET0=1;
EA=1;

Bufor[0]=5;
Bufor[1]=6;
Bufor[2]=8;
Bufor[3]=9;


while(1);
}

void timer0(void)__interrupt(1)__using(1)
{
TH0=czas/256;
TL0=czas%256;

if(++count>50)
	{
		portAnod= tablicaAnod[Licznik];
		portSek=TablicaZnakow[Bufor[Licznik]];
		Licznik++;
		if(Licznik >3)Licznik=0;
		count=0;
	}

}
