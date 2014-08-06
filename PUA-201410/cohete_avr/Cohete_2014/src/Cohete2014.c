//24 JULIO-Gran cambio I2C!!!!

#define F_CPU 32000000UL
#define CPU_SPEED       32000000
#define TWI_SPEED             40000       //!< TWI data transfer rate
#define MY_ADC    ADCA
#define MY_ADC_CH ADC_CH0

#define TEST_BT_STRING "TESTBT\0"
#define TEST_RF_STRING "TESTRF\0"
#define TEST_RFCHEK1_STRING "TESTRFCHECK1\0"
#define TEST_RFCHEK2_STRING "TESTRFCHECK2\0"
#define TEST_RFCHEK3_STRING "TESTRFCHECK3\0"
#define TEST_RFCHEK4_STRING "TESTRFCHECK4\0"
#define TRES_STRING "TRES\0"
#define DIEZ_STRING "DIEZ\0"
#define UNO_STRING "UNO\0"
#define ABORTAR_STRING "ABORTAR\0"


#define TEST_BT 5
#define TEST_RF 2
#define TEST_RFCHECK 7
#define TRES 3
#define DIEZ 10
#define UNO 1
#define ABORTAR 14
#define NONE 20

#define ENABLE_ON PORTD_OUT|=0X10
#define IGN0_ON PORTD_OUT|=0X01
#define IGN1_ON PORTD_OUT|=0X02
#define IGN2_ON PORTD_OUT|=0X04
#define IGN3_ON PORTD_OUT|=0X08

#define IGN0_OFF PORTD_OUT&=~0X01
#define IGN1_OFF PORTD_OUT&=~0X02
#define IGN2_OFF PORTD_OUT&=~0X04
#define IGN3_OFF PORTD_OUT&=~0X08

#define ENABLE_OFF PORTD_OUT&=~0X10

//#define TIEMPO_SEGUNDO_IGNITOR_NEMATODOS 14000
#define TIEMPO_SEGUNDO_IGNITOR_NEMATODOS 11400
//#define TIEMPO_SEGUNDO_IGNITOR_NEMATODOS 10000

#define TIEMPO_SEGUNDO_IGNITOR TIEMPO_SEGUNDO_IGNITOR_NEMATODOS//TODO Cambiar dependiendo de la misión a programar!!
#define TIEMPO_TERCER_IGNITOR 30000//Tiempo en ms
#define TIEMPO_CUARTO_IGNITOR 30000//Tiempo en ms


#define CONTEO_IGNITOR1 11
#define CONTEO_1MIN 58
#define CONTEO_APAGADO 20


#include "board.h"
#include "sysclk.h"
#include "twi_master.h"
#include "adc.h"
#include "led.h"

#include "conf_board.h"
#include "PIOHandler.c"	//Archivo necesario para manejar la PIO
#include "ADCHandler.c"	//Archivo necesario para manejar el ADC
#include "usart_driver.h"	//Archivo necesario para inicializar la usart
#include "usart_driver.c"	//Archivo necesario para inicializar la usart
#include "libMPU/MPU6050.h"
#include "TC_driver.h"
#include "TC_driver.c"


uint8_t sendData0;
uint8_t receivedData0;
USART_data_t USART_data0;

uint8_t sendData1;
uint8_t receivedData1;
USART_data_t USART_data1;

volatile int cuenta=0;
volatile int envioDato=0;
volatile char* recibido;
volatile char* recibido2;
volatile int tamStr=0;
volatile uint8_t comandoLeido;
volatile uint8_t hayComando;

volatile uint8_t esUnMin=1;
static uint8_t* accel_t_gyro;
static uint16_t* p= 0;


void testCommunication();
void setup_Timer();
void setup_Timer2();
void enviarTrama();
void enviarTrama2();
void secuenciaIgnicion();
void tomarDatos();
void enviarTrama2Bth();

void setup_clk()
{
	OSC.CTRL = OSC_RC32MEN_bm;       // enable 32MHz oscillator
	while(!(OSC.STATUS & OSC_RC32MRDY_bm)); // wait for oscillator to be ready
	CCP = CCP_IOREG_gc;              // disable register security for clock update
	CLK.CTRL = CLK_SCLKSEL_RC32M_gc; // switch to 32MHz clock
	OSC.CTRL &=(~OSC_RC2MEN_bm);
	
}

void setup_USART0(){
	
	PORTC.DIRSET = PIN3_bm; //PINC3 (TXD0) as output
	PORTC.DIRCLR = PIN2_bm; //PC2 (RXD0) as input
	USART_InterruptDriver_Initialize(&USART_data0, &USARTC0, USART_DREINTLVL_LO_gc);	// Use USARTC0 and initialize buffers.
	/* USARTC0, 8 Data bits, odd parity, 1 Stop bit. */
	USART_Format_Set(USART_data0.usart, USART_CHSIZE_8BIT_gc, USART_PMODE_ODD_gc, false);
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
	/* USARTC0, 8 Data bits, Odd parity, 1 Stop bit. */
	USART_Format_Set(USART_data1.usart, USART_CHSIZE_8BIT_gc, USART_PMODE_ODD_gc, false);
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


static void adc_init(void)
{
	struct adc_config adc_conf;
	struct adc_channel_config adcch_conf;

	adc_read_configuration(&MY_ADC, &adc_conf);
	adcch_read_configuration(&MY_ADC, MY_ADC_CH, &adcch_conf);

	adc_set_conversion_parameters(&adc_conf, ADC_SIGN_OFF, ADC_RES_12,
	ADC_REF_AREFA);
	adc_set_conversion_trigger(&adc_conf, ADC_TRIG_MANUAL, 1, 0);
	adc_set_clock_rate(&adc_conf, 200000UL);

	adcch_set_input(&adcch_conf, ADCCH_POS_PIN1, ADCCH_NEG_NONE, 1);

	adc_write_configuration(&MY_ADC, &adc_conf);
	adcch_write_configuration(&MY_ADC, MY_ADC_CH, &adcch_conf);
	
	adc_enable(&MY_ADC);
	adc_start_conversion(&MY_ADC, MY_ADC_CH);
}

void setup_Timer(){
	//16 ms
	TC0_ConfigClockSource( &TCC0, TC_CLKSEL_DIV8_gc );
	//TC0_ConfigClockSource( &TCC0, TC_CLKSEL_DIV1024_gc );
	TC_SetPeriod( &TCC0, 0xFA00 );	//Es el periodo o TOP Value para que se active la interrupción. (Equivale a 16ms)
	//TC_SetPeriod( &TCC0, 0x7A12 );
	
}
void setup_Timer2(){
	//1 min
	TC1_ConfigClockSource( &TCC1, TC_CLKSEL_DIV1024_gc );
	TC_SetPeriod( &TCC1, 0x8000 );	//Es el periodo o TOP Value para que se active la interrupción. (Equivale a 1030ms)
}

void setup_test()
{
	apagarLED(0);
	apagarLED(1);
	int i=0;
	for (i=0;i<5;i++)
	{
		//usart_putstr1("us1");
		encenderLED(0);
		_delay_ms(100);
		apagarLED(0);
		_delay_ms(100);
	}
}
void setup_twi()
{	
	// TWI master initialization options.
	twi_master_options_t opt = {
		.speed = TWI_SPEED,
		.chip  = MPU6050_I2C_ADDRESS
	};
	// Initialize the TWI master driver.
	twi_master_setup(TWI_EXAMPLE, &opt);
}
void setup_PIO(){
	
	/* Configure PORTD as output with the pattern 0x55. */
	PORTD_OUT=0;
	PORT_SetPinsAsOutput( &PORTD, 0x1F );
	PORTD_OUT=0;	
	PORT_SetPinsAsOutput( &PORTB, 0x03 );
	PORTB_OUT&=~3;

}
void setup()
{
	board_init();
	setup_clk();
	setup_PIO();	
	adc_init();
	setup_USART0();	//Hace el set-up de la USART1
	setup_USART1();	//Hace el set-up de la USART1
	PORTB_OUT=0;	
	
	irq_initialize_vectors();	
	setup_twi();
	
	setupIMU(3,0); //acceleración máxima 16g; velocidad angular máxima de 250°/seg.
	setup_Timer();
	setup_Timer2();
	setup_test();	
	sei();
}
void iniciarEnvioDatos()
{	
	usart_putstr0("INICIO\0\0");
	
	_delay_ms(200);
	usart_putstr0("INICIO\0\0");
	//_delay_ms(500);
	int i=0;
	for (i=0;i<30000;i++)
	{
		nop();
		nop();
		nop();
	}
	TC_SetCount(&TCC0,0);//establece el contador en cero
	TC0_SetOverflowIntLevel(&TCC0,TC_OVFINTLVL_MED_gc);//habilita interrupción para enviar datos
}
void iniciarConteoUnMin()
{
	TC_SetCount(&TCC1,0);//establece el contador en cero
	TC0_SetOverflowIntLevel(&TCC1,TC_OVFINTLVL_HI_gc);//habilita interrupción para enviar datos
}

int main(void)
{  
  setup();
  recibido=malloc(20*sizeof(char));
  recibido2=malloc(20*sizeof(char));
  accel_t_gyro=malloc(14*sizeof(char));
  int i=0;
  for (i=0;i<14;i++)
  {
	  accel_t_gyro[i]=i;
  }
	//testCommunication();//Descomentar para test del IMU - debe llegar "WHO_AM_I: h"
  while(1){
	  
	  if(hayComando==1)
	  {
		  if (comandoLeido==ABORTAR)
		  {
			  //Ignitores apagados, enable apagado
			  PORTD_OUT=0;
			  comandoLeido=0;
			  usart_putstr1("ABORTARCHECK\0");
		  }
		  if(comandoLeido==TEST_BT)
		  {
			  //send via bluetooth
			  usart_putstr1("TESTBTCHECK\0");
			  comandoLeido=0;
		  }
		  if(comandoLeido==TEST_RF)
		  {
			  //TODO
			  testCommunication();
			  _delay_ms(300);
			  enviarTrama2Bth();
			  _delay_ms(300);
			  usart_putstr0("TESTRF\0");
			  //_delay_ms(1000);//Tiempo de espera para recibir confirmación de los dataloggers (la interrupción lo maneja).
			  int i=0;
			  for (i=0;i<30000;i++)
			  {
				  nop();
				  nop();
				  nop();
			  }
			  
			  //Independientemente de cuantos dataloggers respondieron aquí confirmo el comando y empiezo a mandar datos.
			  usart_putstr1("TESTRFCHECK\0");
			  comandoLeido=0;
		  }
		  if(comandoLeido==DIEZ)
		  {
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
			  iniciarConteoUnMin();//1min antes del primer ignitor
			  _delay_ms(200);
			  for (int i=0;i<2;i++)
			  {
				  usart_putstr0("INICIO\0\0\0\0\0\0");
				  _delay_ms(500);
			  }
			  
			  //usart_putstr0("INICIO\0\0");
			  _delay_ms(1000);
			  //iniciarEnvioDatos();
			  
			  while(1)
			  {
				  //tomarDatos();
				  enviarTrama2();
			  }
			  
			  //_delay_ms(60000);//no hay forma de abortar desde aquí.
			  
			  //secuenciaIgnicion();
		  }
		  hayComando=0;
		  
	  } 
	  
  }
}
void secuenciaIgnicion()
{
	IGN0_ON;
	_delay_ms(TIEMPO_SEGUNDO_IGNITOR);
	IGN1_ON;
	_delay_ms(TIEMPO_TERCER_IGNITOR);
	IGN0_OFF;
	IGN2_ON;
	_delay_ms(TIEMPO_CUARTO_IGNITOR);
	IGN3_ON;
	_delay_ms(10000);
	IGN1_OFF;
}
void tomarDatos()
{
	//TODO
	//adc_start_conversion(&MY_ADC, MY_ADC_CH);
	//adc_wait_for_interrupt_flag(&MY_ADC, MY_ADC_CH);
	//*p=adc_get_result(&MY_ADC, MY_ADC_CH);
	*p++;
	
	//int error= MPU6050_read (MPU6050_ACCEL_XOUT_H, (uint8_t *) &accel_t_gyro, 14);
	int i=0;
	for (i=0;i<14;i++)
	{
		accel_t_gyro[i]++;	
		if(accel_t_gyro[i]>=100)
			accel_t_gyro[i]=2;
	}
}

void enviarTrama()
{
	//sensor presión 
	
	usart_putc0('3');
	usart_putc0('S');
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
	usart_putc0(*p);
	usart_putc0(*p>>8);
	
	usart_putc0('S');
	usart_putc0('Z');
	usart_putstr0("\0\0\0");
	
}


void enviarTrama2()
{
	//sensor presión
	adc_start_conversion(&MY_ADC, MY_ADC_CH);
	adc_wait_for_interrupt_flag(&MY_ADC, MY_ADC_CH);
	uint16_t presion= 0;
	presion=adc_get_result(&MY_ADC, MY_ADC_CH);
	
	//uint8_t accel_temp_gyro[14]={1,2,3,4,5,6,7,8,9,10,11,12,13,14};
	
	uint8_t* accel_temp_gyro=malloc(14*sizeof(char));
	int error= MPU6050_read (MPU6050_ACCEL_XOUT_H, (uint8_t *) accel_temp_gyro, 14);
	
	usart_putc0('3');
	usart_putc0('S');
	usart_putc0(accel_temp_gyro[8]);
	usart_putc0(accel_temp_gyro[9]);
	usart_putc0(accel_temp_gyro[10]);
	usart_putc0(accel_temp_gyro[11]);
	usart_putc0(accel_temp_gyro[12]);
	usart_putc0(accel_temp_gyro[13]);
	
	usart_putc0(0x7E);
	usart_putc0(accel_temp_gyro[0]);
	usart_putc0(accel_temp_gyro[1]);
	usart_putc0(accel_temp_gyro[2]);
	usart_putc0(accel_temp_gyro[3]);
	usart_putc0(accel_temp_gyro[4]);
	usart_putc0(accel_temp_gyro[5]);
	
	
	usart_putc0(0x7E);
	usart_putc0(presion>>8);
	usart_putc0(presion);
	
	
	usart_putc0('S');
	usart_putc0('Z');
	
}


void enviarTrama2Bth()
{
	//sensor presión
	adc_start_conversion(&MY_ADC, MY_ADC_CH);
	adc_wait_for_interrupt_flag(&MY_ADC, MY_ADC_CH);
	uint16_t presion= 0;
	presion=adc_get_result(&MY_ADC, MY_ADC_CH);
	
	//uint8_t accel_temp_gyro[14]={1,2,3,4,5,6,7,8,9,10,11,12,13,14};
	
	uint8_t* accel_temp_gyro=malloc(14*sizeof(char));
	int error= MPU6050_read (MPU6050_ACCEL_XOUT_H, (uint8_t *) accel_temp_gyro, 14);
	
	usart_putc1('3');
	usart_putc1('S');
	
	usart_putc1(accel_temp_gyro[8]);
	usart_putc1(accel_temp_gyro[9]);
	usart_putc1(accel_temp_gyro[10]);
	usart_putc1(accel_temp_gyro[11]);
	usart_putc1(accel_temp_gyro[12]);
	usart_putc1(accel_temp_gyro[13]);
	
	usart_putc1(0x7E);

	usart_putc1(accel_temp_gyro[0]);
	usart_putc1(accel_temp_gyro[1]);
	usart_putc1(accel_temp_gyro[2]);
	usart_putc1(accel_temp_gyro[3]);
	usart_putc1(accel_temp_gyro[4]);
	usart_putc1(accel_temp_gyro[5]);
	
	
	usart_putc1(0x7E);
	usart_putc1(presion>>8);
	usart_putc1(presion);
	
	
	usart_putc1('S');
	usart_putc1('Z');
	
}
void testCommunication()
{
	uint8_t c;
	int error = MPU6050_read (MPU6050_WHO_AM_I, &c, 1);//1 byte received
	if(error!=0) {
		usart_putstr1("errorWIAM: ");
		usart_putc1(error);
		usart_putc1(error>>8);
	}
	else
	{
		usart_putstr1("WHO_AM_I: ");
		usart_putc1(c);//You should receive 0x68= "h"
	}
	usart_putstr1("\n\r");
}
int comparar(char* cadenaParam, char* aCompararParam)
{
	char* aComparar=aCompararParam;
	char* cadena=cadenaParam;
	int esIgual=1;
	while(*aComparar!=0)
	{
		if(*aComparar++!=*cadena++)
		{
			esIgual=0;
			break;
		}
	}
	if(esIgual==1)
	{
		return 1;
	}
	return 0;
}

int compararTodo(char* cadenaParam)
{
	if(comparar(cadenaParam,TEST_BT_STRING)==1)
		return TEST_BT;
	else if(comparar(cadenaParam,TEST_RF_STRING)==1)
		return TEST_RF;
	else if(comparar(cadenaParam,TEST_RFCHEK1_STRING)==1)
		return TEST_RFCHECK;
	else if(comparar(cadenaParam,ABORTAR_STRING)==1)
		return ABORTAR;
	else if(comparar(cadenaParam,DIEZ_STRING)==1)
		return DIEZ;
	else if(comparar(cadenaParam,TRES_STRING)==1)
		return TRES;
	else if(comparar(cadenaParam,UNO_STRING)==1)
		return UNO;

	return NONE;
}
ISR(USARTC1_RXC_vect)
{
	//bluetooth
	cli();
	PORTB_OUT|=2;
	USART_RXComplete(&USART_data1);
	if (USART_RXBufferData_Available(&USART_data1)) {
		receivedData1 = USART_RXBuffer_GetByte(&USART_data1);
		*recibido++=receivedData1;
		tamStr++;
		if (receivedData1 == 0){
			recibido-=tamStr;
			tamStr=0;
			hayComando=1;
			comandoLeido=compararTodo(recibido);
			
		}
	}
	PORTB_OUT&=~2;
	sei();
}


ISR(USARTC0_RXC_vect)
{
	//Xbee
	cli();
	PORTB_OUT|=2;
	USART_RXComplete(&USART_data0);
	if (USART_RXBufferData_Available(&USART_data0)) {
		receivedData0 = USART_RXBuffer_GetByte(&USART_data0);
		*recibido2++=receivedData0;
		usart_putc1(receivedData0);
		tamStr++;
		if (receivedData0 == 0){			
			recibido2-=tamStr;
			tamStr=0;
			//Se redirecciona la respuesta de los xbee al bluetooth.
			usart_putstr1(recibido2);
			
		}
	}
	PORTB_OUT&=~2;
	sei();
}

ISR(TCC0_OVF_vect)
{	//Sucede cada 16ms
	cli();
	TC_SetCount(&TCC0,0);
	//envioDato=1;//habilita envío de la siguiente trama
	enviarTrama();
	sei();
}
ISR(TCC1_OVF_vect)
{	//Sucede cada 2,07 seg
	cli();
	encenderLED(0);
	encenderLED(1);
	TC_SetCount(&TCC1,0);
	if(esUnMin==1&&cuenta>=CONTEO_1MIN)//1min ->58
	{
		usart_putstr1("Ignitado0\0");
		IGN0_ON;
		cuenta=0;
		esUnMin=0;
	}
	
	else if(esUnMin==0&&cuenta>=CONTEO_IGNITOR1)//11
	{
		usart_putstr1("Ignitado1\0");
		esUnMin=2;
		IGN1_ON;
	}
	else if(esUnMin==2&&cuenta>=CONTEO_APAGADO)//11
	{
		usart_putstr1("Apagados\0");
		IGN1_OFF;
		IGN0_OFF;
		esUnMin=3;
	}
	cuenta++;
	//usart_putstr1("CHAO");
	
	sei();
}