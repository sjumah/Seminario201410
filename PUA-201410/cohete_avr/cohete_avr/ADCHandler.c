#include <avr/io.h>
#include <util/delay.h>
/* Funci�n que inicializa el ADC*/

/* Funci�n que convierte el valor del pin ADC*/
void convertirValor_ADC()
{
	ADCA_CH2_CTRL |= 0x80;		//Empieza la conversi�n	
}