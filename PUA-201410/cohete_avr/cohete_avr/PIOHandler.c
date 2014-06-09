
#include "port_driver.h"	//Archivo necesario para manejar el puerto IO
#include "port_driver.c"	//Archivo necesario para manejar el puerto IO


/* Función que enciende uno de los 3 leds de la tarjeta (0, 1) */
void encenderLED( int led )
{
	if(led == 0){
		PORTB_OUT |= 0x01;
	}else if (led == 1){
		PORTB_OUT |= 0x02;
	}
}

void apagarLED( int led )
{
	if(led == 0){
		PORTB_OUT &=~(0X01);
	}else if (led == 1){
		PORTB_OUT &=~(0X02);
	}
}


