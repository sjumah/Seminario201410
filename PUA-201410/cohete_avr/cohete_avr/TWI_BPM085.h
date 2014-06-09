/*
 * TWI_BPM085.h
 *
 * Created: 28/05/2014 09:53:43 p.m.
 *  Author: Juan Manuel
 */ 


#ifndef TWI_BPM085_H_
#define TWI_BPM085_H_

#include <stdio.h>

//Dos TWI disponibles: C y E

//Dirección de BMP
#define TWI_BMPADDR_R 0xEF	//Leer
#define TWI_BMPADDR_W 0xEE	//Escribir



//Comandos de control
#define TWI_CMD_UT 0x2E
#define TWI_CMD_UP0 0x34
#define TWI_CMD_UP1 0x74
#define TWI_CMD_UP2 0xB4
#define TWI_CMD_UP3 0xF4

//Direcciones de registros
#define TWI_ADDR_UPUT 0xF6
#define TWI_ADDR_CTRL 0xF4
#define TWI_ADDR_AC1 0xAA
#define TWI_ADDR_AC2 0xAC
#define TWI_ADDR_AC3 0xAE
#define TWI_ADDR_AC4 0xB0
#define TWI_ADDR_AC5 0xB2
#define TWI_ADDR_AC6 0xB4
#define TWI_ADDR_B1 0xB6
#define TWI_ADDR_B2 0xB8
#define TWI_ADDR_MB 0xBA
#define TWI_ADDR_MC 0xBC
#define TWI_ADDR_MD 0xBE

//Constantes
#define TWI_UT_DELAY 5 //Máximo tiempo de espera
#define TWI_UP_DELAY 30 //Máximo tiempo de espera

//Banderas
#define TWI_RX_NACK 0x01

int regac1, regac2, regac3, regb1, regb2, regmb, regmc, regmd;
unsigned int regac4, regac5, regac6;
long rawtemperature, rawpressure;

typedef struct
{
	char banderas;
	char estado;
	char dator_h;
	char dator_l;
	int32_t presion; //4 bytes
	double temperatura; //8 bytes
	double altitud;
}TWI_Control;




void TWI_Init(volatile TWI_Control *TWI_Ctrl);

void TWI_LeerReg(volatile TWI_Control *TWI_Ctrl,
				char TWI_Addr);

void TWI_Init_Var(volatile TWI_Control *TWI_Ctrl,
				char TWI_Var); //Variable a leer
				
void TWI_LeerVariables(volatile TWI_Control *TWI_Ctrl);



#endif /* TWI_BPM085_H_ */