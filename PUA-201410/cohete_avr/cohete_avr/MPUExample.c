/*
 * MPUExample.c
 *
 * Created: 03/09/2013 10:02:06 p. m.
 *  Author: t-carna
 */ 

//# define F_CPU 8000000UL
# define F_CPU 7380000UL

#define SENS1 (1<<6)
#define SENS2 (1<<5)
#define SENS3 (1<<4)


#define ACT1 2
#define ACT2 3
#define ACT3 4

#define IDLE_ST 2
#define PAUSE_ST 0
#define GO_ST 1

//#define F_CPU 1000000UL
#include <avr/io.h>
#include "uart.h"
#include <util/delay.h>
#include "libMPU/MPU6050.h"
#include "TCA9548.h"
#include <avr/interrupt.h>

void setup();
void testCommunication();
void testAllCommunication();
void sendData();
void setupSensors();
void completeSetup();

// global variable to count the number of overflows
volatile uint8_t go1,go2,go3,go,first;

uint8_t* accel_t_gyro;
int error;
static uint8_t turno;
uint8_t *dirSent;


// initialize timer, interrupt and variable
void timer1_init()
{
	// set up timer with prescaler = 8
	TCCR1B |= (1 << CS11)|(1<<WGM12);
	
	//Set comparision value - 200hz
	//OCR1A=0x1388;
	
	//Set comparision value - 400hz
	//OCR1A=0x9C4;
	
	//Set comparision value - 600hz
	OCR1A=0x682;
	// initialize counter
	TCNT1 = 0;
	TIMSK|=(1<<OCIE1A);
	
}

ISR(USART_RXC_vect)
{
	first=UDR;
	go=PAUSE_ST;	
}
ISR(TIMER1_COMPA_vect)
{
	TCNT1 = 0;
	//200hz
	if(turno==0)
		{
			go1=1;
			turno=1;
			
		}
	else if(turno==1)
		{
			go2=1;
			turno=2;
		}
		else if(turno==2)
		{
			go3=1;
			turno=0;
		}
	else //shouldn't happen anyway
	{
		turno=1;
		go1=1;
	}
	
}
int main(void)
{
	_delay_ms(500);//solo por precaución
	setup();	
	uart_putstr("go");	
	
	//Version with TCA damaged (just one sensor)
	//testAllCommunication();	
	testCommunication();
	//setupSensors();	
	setupIMU(2,1);
	
	// enable global interrupts
	go=IDLE_ST;//idle
	go1=0;
	go2=0;
	turno=0;
	uart_putstr("START");//protocolo de inicio
	sei();
	
	
    while(1)
    {
		if(go==PAUSE_ST)
		{
			//evaluate ISR Usart cases				
			UCSRB&=~(1<<RXCIE);	
			char* a;
			a=USART_Receive_chain(first);
			uart_putstr(a);
			if(compare(a,"DATA",4)==1)
				{
					go=GO_ST;
					uart_putstr("SSSSSST");//protocolo de inicio
					TCNT1=0;
				}
			else if(compare(a,"RESET",5)==1)
				{
					completeSetup();
					uart_putstr("RESET");
					go=IDLE_ST;//idle
				}
				else if(compare(a,"STOP",4)==1)
				{
					uart_putstr("STOPPED");
					go=IDLE_ST;//idle
				}
				else if(compare(a,"PRESS",5)==1)//then get "PRESSxxx"
				{
					uint8_t act1=a[5]-'0';
					uint8_t act2=a[6]-'0';
					uint8_t act3=a[7]-'0';
					uint8_t pressed=(act1<<ACT1)|(act3<<ACT2)|(act3<<ACT3);
					PORTD=0;
					PORTD=pressed;
					uart_putstr("PRESSED");
					go=GO_ST;//go
					//TODO Put timer to expire press in maximum time
				}
				else
				{
					uart_putstr("BAD COMMAND:");
					uart_putstr(a);
					go=IDLE_ST;//idle
				}
			
			//end
			
			UCSRB|=(1<<RXCIE);
		}
		
		if(go==1&&go1!=0)
		{
			go1=0;	
			setupI2C(SENS1);	
			uart_putstr("sss1");
			
			error= MPU6050_read (MPU6050_ACCEL_XOUT_H, (uint8_t *) &accel_t_gyro, 14);
			dirSent=(uint8_t *) &accel_t_gyro;			
			
			if(error!=0) {//This shouldn't happen
				uart_putstr("error in data1 = ");
				uart_putc(error);
				uart_putc(error>>8);
			}
			else{
				//send data as little endian.
				//accel				
				uart_putc(dirSent[1]);
				uart_putc(dirSent[0]);
				uart_putc(dirSent[3]);
				uart_putc(dirSent[2]);
				uart_putc(dirSent[5]);
				uart_putc(dirSent[4]);
				
				//gyro
				uart_putc(dirSent[9]);
				uart_putc(dirSent[8]);
				uart_putc(dirSent[11]);
				uart_putc(dirSent[10]);
				uart_putc(dirSent[13]);
				uart_putc(dirSent[12]);
			}

		}  
		if(go==1&&go2!=0)
		{
			go2=0;
			setupI2C(SENS2);
			uart_putstr("sss2");
			
			error= MPU6050_read (MPU6050_ACCEL_XOUT_H, (uint8_t *) &accel_t_gyro, 14);
			dirSent=(uint8_t *) &accel_t_gyro;
			
			if(error!=0) {//This shouldn't happen
				uart_putstr("error in data2 = ");
				uart_putc(error);
				uart_putc(error>>8);
			}
			else{
				//send data as little endian.
				//accel
				uart_putc(dirSent[1]);
				uart_putc(dirSent[0]);
				uart_putc(dirSent[3]);
				uart_putc(dirSent[2]);
				uart_putc(dirSent[5]);
				uart_putc(dirSent[4]);
				
				//gyro
				uart_putc(dirSent[9]);
				uart_putc(dirSent[8]);
				uart_putc(dirSent[11]);
				uart_putc(dirSent[10]);
				uart_putc(dirSent[13]);
				uart_putc(dirSent[12]);
			}

		}
		if(go==1&&go3!=0)
		{
			go3=0;
			setupI2C(SENS3);
			uart_putstr("sss3");
			
			error= MPU6050_read (MPU6050_ACCEL_XOUT_H, (uint8_t *) &accel_t_gyro, 14);
			dirSent=(uint8_t *) &accel_t_gyro;
			
			if(error!=0) {//This shouldn't happen
				uart_putstr("error in data2 = ");
				uart_putc(error);
				uart_putc(error>>8);
			}
			else{
				//send data as little endian.
				//accel
				uart_putc(dirSent[1]);
				uart_putc(dirSent[0]);
				uart_putc(dirSent[3]);
				uart_putc(dirSent[2]);
				uart_putc(dirSent[5]);
				uart_putc(dirSent[4]);
				
				//gyro
				uart_putc(dirSent[9]);
				uart_putc(dirSent[8]);
				uart_putc(dirSent[11]);
				uart_putc(dirSent[10]);
				uart_putc(dirSent[13]);
				uart_putc(dirSent[12]);
			}

		}      
	}
}


void sendData()
{
	uint8_t* accel_t_gyro;
	
	int error = MPU6050_read (MPU6050_ACCEL_XOUT_H, (uint8_t *) &accel_t_gyro, 14);
	uint8_t *dirSent=(uint8_t *) &accel_t_gyro;
	//uart_print(&accel_t_gyro,6);//sends acceleration
	//uart_print(dir2,6);//sends angular velocity
	
	
	
	if(error!=0) {//This shouldn't happen
		uart_putstr("error in data = ");
		uart_putc(error);
		uart_putc(error>>8);
	}
	else{
		//send data as little endian.
		//accel
		uart_putc(dirSent[1]);
		uart_putc(dirSent[0]);
		uart_putc(dirSent[3]);
		uart_putc(dirSent[2]);
		uart_putc(dirSent[5]);
		uart_putc(dirSent[4]);
		
		//gyro
		uart_putc(dirSent[9]);
		uart_putc(dirSent[8]);
		uart_putc(dirSent[11]);
		uart_putc(dirSent[10]);
		uart_putc(dirSent[13]);
		uart_putc(dirSent[12]);
	}
}


void setup(void)
{
	uart_init();
	UCSRB|=(1<<RXCIE); //interrupt for receive enable.
	uart_putstr("usart init\n\r");
	TWIInit();
	uart_putstr("twi init\n\r");
	
	timer1_init();
	uart_putstr("timer init\n\r");
	
}

void completeSetup()
{
	cli();
	setup();
	testAllCommunication();
	setupSensors();
	
	// enable global interrupts
	go=IDLE_ST;//idle
	go1=0;
	go2=0;
	turno=0;
	uart_putstr("START");//protocolo de inicio
	sei();
}
void setupSensors()
{	
	setupI2C(SENS1);
	_delay_ms(5);
	setupIMU(2,1); //Set full range for gyro to |1000°/sec| and for accel to |4g|, set frequency to 200hz (quemado)
	_delay_ms(5);
	
	setupI2C(SENS2);
	_delay_ms(5);
	setupIMU(2,1); 
	_delay_ms(5);
	
	setupI2C(SENS3);
	_delay_ms(5);
	setupIMU(2,1); 
	_delay_ms(5);
}

void testAllCommunication()
{
	setupI2C(SENS1);
	_delay_ms(5);
	testCommunication();
	_delay_ms(5);
	setupI2C(SENS2);
	_delay_ms(5);
	testCommunication();
	_delay_ms(5);
	setupI2C(SENS3);	
	_delay_ms(5);
	testCommunication();
}

void testCommunication()
{	
	uint8_t c;
	int error = MPU6050_read (MPU6050_WHO_AM_I, &c, 1);//1 byte received
	if(error!=0) {
		uart_putstr("errorWIAM: ");
		uart_putc(error);
		uart_putc(error>>8);
	}
	else 
	{
		uart_putstr("WHO_AM_I: ");
		uart_putc(c);//You should receive 0x68= "h"		
	}
	uart_putstr("\n\r");
}



