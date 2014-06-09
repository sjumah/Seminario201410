/*
 * cohete_avr.c
 *
 * Created: 04/06/2014 8:57:19 a. m.
 *  Author: CarolXimena
 */ 


#include <avr/io.h>
#include <avr/delay.h>
#include <avr/interrupt.h>
#include "ADCHandler.c"	//Archivo necesario para manejar el ADC
#include "PIOHandler.c"	//Archivo necesario para manejar el ADC
#include "usart_driver.h"	//Archivo necesario para inicializar la usart
#include "usart_driver.c"	//Archivo necesario para inicializar la usart
#include "TC_driver.h"
#include "TC_driver.c"
#include "twi_master_driver.h"
#include "twi_master_driver.c"
#include "libMPU/MPU6050.h"

//Falta inicializar y leer I2C, falta iniciar timer con interrupción cada 16ms
#define F_CPU 32000000UL
#define CPU_SPEED       32000000
#define BAUDRATE	40000
#define TWI_BAUDSETTING TWI_BAUD(CPU_SPEED, BAUDRATE)
#define TEST_BT 5
#define TEST_RF 2
#define TRES 3
#define DIEZ 10
#define UNO 1
#define ABORTAR 14

#define ENABLE_ON PORTD_OUT|=0X10
#define IGN0_ON PORTD_OUT|=0X01
#define IGN1_ON PORTD_OUT|=0X02
#define IGN2_ON PORTD_OUT|=0X04
#define IGN3_ON PORTD_OUT|=0X08
#define ENABLE_OFF PORTD_OUT&=~0X10

uint8_t sendData0;
uint8_t receivedData0;
USART_data_t USART_data0;

uint8_t sendData1;
uint8_t receivedData1;
USART_data_t USART_data1;

uint8_t comandoLeido;
uint8_t hayComando;
//Módulo TWI
//TWI_Control TWI_Ctrl;
TWI_Master_t twiMaster;    /*!< TWI master module. */

int main(void)
{
	setup();
	
	//Ignitores apagados, enable apagado
	PORTD_OUT=0;
	comandoLeido=0;
	hayComando=0;
	
    while(1)
    {
		if(hayComando)
		{
			if(comandoLeido==TEST_BT)
			{
				//send via bluetooth
				usart_putstr1("TESTBTCHECK\0");
				comandoLeido=0;
			}
			if(comandoLeido==TEST_RF)
			{	
				//check and send I2C, ADC
				//TODO verificar todos los dataloggers antes del 'check'??
				enviarTrama();
				
				usart_putstr1("TESTRFCHECK\0");
				//TODO Iniciar envío datos periódico: Inicializar timer con interrupción cada 16ms
				
				comandoLeido=0;
			}
			if(comandoLeido==DIEZ)
			{
				//init timer 7' -> interrupt & enable
				//TODO timer??
				usart_putstr1("DIEZCHECK\0");
				comandoLeido=0;
			}
			if(comandoLeido==TRES)
			{
				ENABLE_ON;
				usart_putstr1("TRESCHECK\0");
				comandoLeido=0;
			}
			if(comandoLeido==UNO)
			{
				comandoLeido=0;
				//conteo interno
				usart_putstr1("UNOCHECK\0");
				_delay_ms(60000);
				
				secuencia_ignicion();
			}
			if (comandoLeido==ABORTAR)
			{
				//Ignitores apagados, enable apagado
				PORTD_OUT=0;
				comandoLeido=0;
				usart_putstr1("ABORTARCHECK\0");
			}
			hayComando=0;
			
		}
    }
}


void secuencia_ignicion()
{
	IGN0_ON;
	_delay_ms(1000);
	IGN1_ON;
	_delay_ms(1000);
	IGN2_ON;
	_delay_ms(1000);
	IGN3_ON;
}

void enviarTrama()
{
	convertirValor_ADC();
	while(ADCA_CH2_INTFLAGS != 0x01);		//Espera hasta que se convierta el valor
	uint16_t p=ADCA_CH2_RES;
	uint8_t* accel_t_gyro;	
	int error= MPU6050_read (MPU6050_ACCEL_XOUT_H, (uint8_t *) &accel_t_gyro, 14);
	
	
	
	usart_putc0('3');
	usart_putc0('5');
	usart_putc0(accel_t_gyro[9]);
	usart_putc0(accel_t_gyro[8]);
	usart_putc0(accel_t_gyro[11]);
	usart_putc0(accel_t_gyro[10]);
	usart_putc0(accel_t_gyro[13]);
	usart_putc0(accel_t_gyro[12]);
	
	usart_putc0(0x7E);
	usart_putc0(accel_t_gyro[1]);
	usart_putc0(accel_t_gyro[0]);
	usart_putc0(accel_t_gyro[3]);
	usart_putc0(accel_t_gyro[2]);
	usart_putc0(accel_t_gyro[5]);
	usart_putc0(accel_t_gyro[4]);
	
	usart_putc0(0x7E);
	usart_putc0(p);
	usart_putc0(p>>8);
	
	usart_putc0('S');
	usart_putc0('Z');
	
}

void setup()
{	
	setup_clk(); //32mhz
	setup_ADC();	//Hace el set-up del ADC
	setup_PIO();	//Hace el set-up de la PIO
	setup_USART0();	//Hace el set-up de la USART0
	setup_USART1();	//Hace el set-up de la USART1
	//TWI_Init(&TWI_Ctrl); //setup_I2C
	setup_TWI();
	setupIMU(2,1);
	
	setup_Timer();
	
	/* Enable global interrupts. */
	sei();
}

void setup_TWI()
{
	TWI_MasterInit(&twiMaster,
	&TWIC,
	TWI_MASTER_INTLVL_LO_gc,
	TWI_BAUDSETTING);
	
}
void setup_clk()
{
	OSC.CTRL = OSC_RC32MEN_bm;       // enable 32MHz oscillator
	while(!(OSC.STATUS & OSC_RC32MRDY_bm)); // wait for oscillator to be ready
	CCP = CCP_IOREG_gc;              // disable register security for clock update
	CLK.CTRL = CLK_SCLKSEL_RC32M_gc; // switch to 32MHz clock
	OSC.CTRL &=(~OSC_RC2MEN_bm);
	
}

void setup_ADC()
{
	ADCA_CH2_CTRL = 0x01;		//Se cuadra el ADC para que sea single - ended input
	ADCA_CH2_MUXCTRL = 0x08;		//Se cuadra para que la entrada sea el pin ADC1 (PA1 - Pin 41)
	ADCA_CTRLB = 0x00;		//12 bits
	ADCA_CTRLA = 0x01;		//Habilita el ADC
	_delay_ms(100);		//Tiempo de espera necesario para el ADC Start - Time
}

void setup_PIO(){
	
	/* Configure PORTD as output with the pattern 0x55. */
	PORT_SetPinsAsOutput( &PORTD, 0x1F );
	PORT_SetPinsAsOutput( &PORTB, 0x03 );

}

/* Función que inicializa la UART para comunicación serial */
void setup_USART0(){
	
	PORTC.DIRSET = PIN3_bm; //PINC3 (TXD0) as output
	PORTC.DIRCLR = PIN2_bm; //PC2 (RXD0) as input
	USART_InterruptDriver_Initialize(&USART_data0, &USARTC0, USART_DREINTLVL_LO_gc);	// Use USARTC0 and initialize buffers.
	/* USARTC0, 8 Data bits, No Parity, 1 Stop bit. */
	USART_Format_Set(USART_data0.usart, USART_CHSIZE_8BIT_gc, USART_PMODE1_bp, false);
	USART_RxdInterruptLevel_Set(USART_data0.usart, USART_RXCINTLVL_LO_gc);			// Enable RXC interrupt.
	
	/* Set Baudrate to 9600 bps:
	 * Use the default I/O clock fequency that is 2 MHz.
	 * Do not use the baudrate scale factor
	 *
	 * Baudrate select = ((I/O clock frequency)/(16*Baudrate))-1
	 *                 = 207 //32mhz
	 *				   = 12 //2mhz
	 */
	USART_Baudrate_Set(&USARTC0, 207 , 0);

	/* Enable both RX and TX. */
	USART_Rx_Enable(USART_data0.usart);
	USART_Tx_Enable(USART_data0.usart);
	
	/* Enable PMIC interrupt level low. */
	PMIC.CTRL |= PMIC_LOLVLEX_bm;
}

void setup_USART1(){
	
	PORTC.DIRSET = PIN7_bm; //PINC3 (TXD0) as output
	PORTC.DIRCLR = PIN6_bm; //PC2 (RXD0) as input
	USART_InterruptDriver_Initialize(&USART_data1, &USARTC1, USART_DREINTLVL_LO_gc);	// Use USARTC0 and initialize buffers.
	/* USARTC0, 8 Data bits, No Parity, 1 Stop bit. */
	USART_Format_Set(USART_data1.usart, USART_CHSIZE_8BIT_gc, USART_PMODE1_bp, false);
	USART_RxdInterruptLevel_Set(USART_data1.usart, USART_RXCINTLVL_LO_gc);			// Enable RXC interrupt.
	
	/* Set Baudrate to 9600 bps:
	 * Use the default I/O clock fequency that is 2 MHz.
	 * Do not use the baudrate scale factor
	 *
	 * Baudrate select = ((I/O clock frequency)/(16*Baudrate))-1
	 *                 = 207 //32mhz
	 *				   = 12 //2mhz
	 */
	USART_Baudrate_Set(&USARTC1, 207 , 0);

	/* Enable both RX and TX. */
	USART_Rx_Enable(USART_data1.usart);
	USART_Tx_Enable(USART_data1.usart);
	
	/* Enable PMIC interrupt level low. */
	PMIC.CTRL |= PMIC_LOLVLEX_bm;
}

ISR(USARTC0_RXC_vect)
{
	//xbee
	USART_RXComplete(&USART_data0);
}
ISR(USARTC1_RXC_vect)
{
	//bluetooth
	//TODO verificar todos los comandos
	cli();
	USART_RXComplete(&USART_data1);
	if (USART_RXBufferData_Available(&USART_data1)) {
		receivedData1 = USART_RXBuffer_GetByte(&USART_data1);
		if (receivedData1 == 'T'){
			if (USART_RXBufferData_Available(&USART_data1)) {
				receivedData1 = USART_RXBuffer_GetByte(&USART_data1);
				if (receivedData1 == 'E'){
					if (USART_RXBufferData_Available(&USART_data1)) {
						receivedData1 = USART_RXBuffer_GetByte(&USART_data1);
						if (receivedData1 == 'S'){
							if (USART_RXBufferData_Available(&USART_data1)) {
								receivedData1 = USART_RXBuffer_GetByte(&USART_data1);
								if (receivedData1 == 'T'){
									if (USART_RXBufferData_Available(&USART_data1)) {
										receivedData1 = USART_RXBuffer_GetByte(&USART_data1);
										if (receivedData1 == 'B'){
											if (USART_RXBufferData_Available(&USART_data1)) {
												receivedData1 = USART_RXBuffer_GetByte(&USART_data1);
												if (receivedData1 == 'T'){
													if (USART_RXBufferData_Available(&USART_data1)) {
														receivedData1 = USART_RXBuffer_GetByte(&USART_data1);
														if (receivedData1 == '\0'){
															comandoLeido=TEST_BT;
															hayComando=1;
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		
	}
	sei();
}


void setup_Timer(){
	//TC_SetPeriod( &TCC0, 0x4E20 );	//Es el periodo o TOP Value para que se active la interrupción. (Equivale a 10ms)
	TC_SetPeriod( &TCC0, 0xFA00 );	//Es el periodo o TOP Value para que se active la interrupción. (Equivale a 16ms)
	TC0_ConfigClockSource( &TCC0, TC_CLKSEL_DIV8_gc );	//Se toma el clk sin prescaler - Clk default 2MHz
	
	
}

ISR(TCC0_CCA_vect)
{
	//
	TC_SetCount(&TCC0,0);
	enviarTrama();
}