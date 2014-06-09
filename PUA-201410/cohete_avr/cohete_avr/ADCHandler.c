#include <avr/io.h>
#include <util/delay.h>
/* Función que inicializa el ADC*/

/* Función que convierte el valor del pin ADC*/
void convertirValor_ADC()
{
	ADCA_CH2_CTRL |= 0x80;		//Empieza la conversión	
}