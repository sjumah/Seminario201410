#include "TC_driver.c"	//Archivo necesario para manejar el timer
#include "TC_driver.h"	//Archivo necesario para manejar el timer

void setup_Timer(){
	TC_SetPeriod( &TCC0, 0x4E20 );	//Es el periodo o TOP Value para que se active la interrupción. (Equivale a 10ms)
	TC0_ConfigClockSource( &TCC0, TC_CLKSEL_DIV1_gc );	//Se toma el clk sin prescaler - Clk default 2MHz
}