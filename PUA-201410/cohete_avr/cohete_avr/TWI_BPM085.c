/*
 * TWI_BMP085.c
 *
 * Created: 28/05/2014 09:53:19 p.m.
 *  Author: Juan Manuel
 */ 

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <avr/io.h>
#include "TWI_BPM085.h"
#define F_CPU 32000000UL
#include <util/delay.h>

void TWI_Init(volatile TWI_Control *TWI_Ctrl)
{
	
	TWIC.CTRL = 0x00; //hold off y EDIEN off
	
	//Smart mode y Qcommand enable
	TWIC.MASTER.CTRLB |= (TWI_MASTER_TIMEOUT0_bm);		//50 us de timeout
	//Baud rate = 400kHz
	// BAUD = fsys/(2*ftwi) - 5 = 35
	TWIC.MASTER.BAUD = 35;
		
	TWIC.MASTER.CTRLA|= TWI_MASTER_ENABLE_bm; //Master enable
		
	TWIC.MASTER.STATUS |= TWI_MASTER_BUSSTATE_IDLE_gc;

}

void TWI_LeerReg(volatile TWI_Control *TWI_Ctrl,
					char TWI_Addr)
{
	//esperar a que el bus esté inactivo
	//while((TWIC.MASTER.STATUS & 0x03) != TWI_MASTER_BUSSTATE_IDLE_gc);
	
	//Enviar dirección y comando de escribir
	TWIC.MASTER.ADDR = TWI_BMPADDR_W; // Aquí está en OWNER
	
	while(!(TWIC.MASTER.STATUS & TWI_MASTER_WIF_bm)); //Sigue estando en OWNER

	if (!(TWIC.MASTER.STATUS & TWI_MASTER_RXACK_bm))
	{
		TWIC.MASTER.DATA = TWI_Addr; // OWNER

		//Indique que se recibió ACK
		TWI_Ctrl->banderas &= ~(TWI_RX_NACK);
	}
	else
	{
		//Indique que no se recibió ACK
		TWI_Ctrl->banderas |= TWI_RX_NACK;
		TWIC.MASTER.CTRLC |= 0x03;
		return;
		
	}

	//Esperamos a que se haya enviado la dirección
	while(!(TWIC.MASTER.STATUS & TWI_MASTER_WIF_bm));

	if (!(TWIC.MASTER.STATUS & TWI_MASTER_RXACK_bm))
	{
		//while((TWIC.MASTER.STATUS & 0x03) != TWI_MASTER_BUSSTATE_IDLE_gc);
		//Enviar restart y comando de lectura
		TWIC.MASTER.ADDR = TWI_BMPADDR_R; 
		TWI_Ctrl->banderas &= ~(TWI_RX_NACK);
	}
	else
	{
		//Indique que no se recibió ACK
		TWI_Ctrl->banderas |= TWI_RX_NACK;

		TWIC.MASTER.CTRLC |= 0x03;
		return;
	}
	//Esperamos a que se haya enviado la dirección
	
	while(!(TWIC.MASTER.STATUS & TWI_MASTER_RIF_bm));
	//Leer dato y enviar ACK
	TWI_Ctrl->dator_h = TWIC.MASTER.DATA;
	//Se envía acknowledge
	TWIC.MASTER.CTRLC = 0x02;
	TWI_Ctrl->banderas &= ~(TWI_RX_NACK);
	
	while(!(TWIC.MASTER.STATUS & TWI_MASTER_RIF_bm));

	//Leer dato y enviar
	TWI_Ctrl->dator_l = TWIC.MASTER.DATA;
	//Envíe condición de parada y NACK
	TWIC.MASTER.CTRLC |= 0x07;
}

void TWI_Init_Var(volatile TWI_Control *TWI_Ctrl,
				char TWI_Var)
{
	//esperar a que el bus esté inactivo
	//while((TWIC.MASTER.STATUS & 0x03) != TWI_MASTER_BUSSTATE_IDLE_gc);
	
	//Enviar dirección y comando de escribir
	TWIC.MASTER.ADDR = TWI_BMPADDR_W;
	
	while(!(TWIC.MASTER.STATUS & TWI_MASTER_WIF_bm));
	if (!(TWIC.MASTER.STATUS & TWI_MASTER_RXACK_bm))
	{
		TWIC.MASTER.DATA = TWI_ADDR_CTRL; //Registro de Control
		//Indique que se recibió ACK
		TWI_Ctrl->banderas &= ~(TWI_RX_NACK);
	}
	else
	{
		//Indique que no se recibió ACK
		TWI_Ctrl->banderas |= TWI_RX_NACK;
		
		return;
	}
	
	//Esperamos a que se haya enviado la dirección del registro de control
	while(!(TWIC.MASTER.STATUS & TWI_MASTER_WIF_bm));
	if (!(TWIC.MASTER.STATUS & TWI_MASTER_RXACK_bm))
	{
		//Enviar el registro de control para determinar la variable a leer
		TWIC.MASTER.DATA = TWI_Var;
		TWI_Ctrl->banderas &= ~(TWI_RX_NACK);
	}
	else
	{
		//Indique que no se recibió ACK
		TWI_Ctrl->banderas |= TWI_RX_NACK;
		return;
	}
	
	//Envíe condición de parada
	TWIC.MASTER.CTRLC |= 0x03;
	
	_delay_ms(TWI_UP_DELAY);	
}

void TWI_LeerVariables(volatile TWI_Control *TWI_Ctrl)
{
	long x1,x2,x3,b3,b5, b6;
	unsigned long b4,b7;
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_AC1);
	regac1 = ((int)TWI_Ctrl->dator_h<<8|(int)TWI_Ctrl->dator_l);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_AC2);
	regac2 = ((int)TWI_Ctrl->dator_h<<8|(int)TWI_Ctrl->dator_l);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_AC3);
	regac3 = ((int)TWI_Ctrl->dator_h<<8|(int)TWI_Ctrl->dator_l);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_AC4);
	regac4 = ((unsigned int)TWI_Ctrl->dator_h<<8|(unsigned int)TWI_Ctrl->dator_l);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_AC5);
	regac5 = ((unsigned int)TWI_Ctrl->dator_h<<8|(unsigned int)TWI_Ctrl->dator_l);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_AC6);
	regac6 = ((unsigned int)TWI_Ctrl->dator_h<<8|(unsigned int)TWI_Ctrl->dator_l);
	
	
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_B1);
	regb1 = ((int)TWI_Ctrl->dator_h<<8|(int)TWI_Ctrl->dator_l);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_B2);
	regb2 = ((int)TWI_Ctrl->dator_h<<8|(int)TWI_Ctrl->dator_l);
	
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_MB);
	regmb = ((int)TWI_Ctrl->dator_h<<8|(int)TWI_Ctrl->dator_l);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_MC);
	regmc = ((int)TWI_Ctrl->dator_h<<8|(int)TWI_Ctrl->dator_l);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_MD);
	regmd = ((int)TWI_Ctrl->dator_h<<8|(int)TWI_Ctrl->dator_l);
	
	
	//Lectura de temperatura cruda
	TWI_Init_Var(TWI_Ctrl,TWI_CMD_UT);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_UPUT);
	rawtemperature = ((long)TWI_Ctrl->dator_h<<8|(long)TWI_Ctrl->dator_l);

	//Lectura de presión cruda
	TWI_Init_Var(TWI_Ctrl,TWI_CMD_UP0);
	TWI_LeerReg(TWI_Ctrl,TWI_ADDR_UPUT);
	rawpressure = ((long)TWI_Ctrl->dator_h<<8|(long)TWI_Ctrl->dator_l);
	
	//Calcular temp real
	x1 = (((long)rawtemperature - regac6) * regac5 )>> 15;
	x2 = ((long)regmc << 11) / (x1 + regmd);
	b5 = x1 + x2;
	TWI_Ctrl->temperatura = (b5+8)>>4;
	TWI_Ctrl->temperatura = TWI_Ctrl->temperatura/10;
	
	
	//Calcular la presión
	b6 = b5 - 4000;
	x1 = (regb2* (b6 * b6) >> 12) >> 11;
	x2 = (regac2 * b6) >> 11;
	x3 = x1 + x2;
	b3 = (((((long)regac1) * 4 + x3) << 0) + 2) >> 2;
	x1 = (regac3 * b6) >> 13;
	x2 = (regb1 * ((b6 * b6) >> 12)) >> 16;
	x3 = ((x1 + x2) + 2) >> 2;
	b4 = (regac4 * (uint32_t)(x3 + 32768)) >> 15;
	b7 = ((uint32_t)rawpressure - b3) * (50000 >> 0);
	TWI_Ctrl->presion = b7 < 0x80000000 ? (b7 << 1) / b4 : (b7 / b4) << 1;
	x1 = (TWI_Ctrl->presion >> 8) * (TWI_Ctrl->presion >> 8);
	x1 = (x1 * 3038) >> 16;
	x2 = (-7357 * TWI_Ctrl->presion) >> 16;
	TWI_Ctrl->presion = TWI_Ctrl->presion + ((x1 + x2 + 3791) >> 4);
		
		
	//Calcular Altitud
	TWI_Ctrl->altitud = (1 - pow((TWI_Ctrl->presion/(double)101325), 0.1903 )) / 0.0000225577;
}