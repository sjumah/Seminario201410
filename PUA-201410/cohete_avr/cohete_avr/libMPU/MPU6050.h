/*
 *
 * Created: 22/08/2013 11:52:05 p. m.
 *  Author: t-carna
 */ 


#include <avr/io.h>
#include "mappingMPU6050.h"
#include "twi_master_driver.h"

extern TWI_Master_t twiMaster;    /*!< TWI master module. */

int MPU6050_write_reg(int reg, uint8_t data);


/***READ ME - setup imu*****************************************/
/* SETUP IMU - set full range for gyroscope and accelerometer
 @params :
|FULL RANGE  | rangeGyro|
-------------------------
| +/-250°/s	 |		0	|
| +/-500°/s	 |		1	|
| +/-1000°/s |		2	|
| +/-2000°/s |		3	|

********

|FULL RANGE  |rangeAccel|
-------------------------
| +/-2g		 |		0	|
| +/-4g		 |		1	|
| +/-8g		 |		2	|
| +/-16g	 |		3	|

***********************************************************************/
void setupIMU(uint8_t rangeGyro,uint8_t rangeAccel)
{
	
	MPU6050_write_reg (MPU6050_PWR_MGMT_1, 0);//set sleep mode off. Check datasheet to use sleep mode.
	
	// low pass filter
	MPU6050_write_reg (MPU6050_CONFIG, 1);
	//set frequency to 200hz!!!
	MPU6050_write_reg (MPU6050_SMPLRT_DIV, 4);
	
	//config gyro
	MPU6050_write_reg (MPU6050_GYRO_CONFIG, 0xF0&(rangeGyro<<3));
	
	//config accel
	MPU6050_write_reg (MPU6050_ACCEL_CONFIG, 0x18&(rangeAccel<<3));
	
	//set interrupt for data ready
	//MPU6050_write_reg(MPU6050_INT_ENABLE,0);
	
}

//start is the register to read
int MPU6050_read(int start, uint8_t *buffer, int size)
{
	TWI_MasterRead(&twiMaster,MPU6050_I2C_ADDRESS,size);
	while(!TWI_MasterReady(&twiMaster)){}
	int i;
	for (i=0;i<size;i++)
	{
		buffer[i]=twiMaster.readData[i];
	}
	
}

int MPU6050_write_reg(int reg, uint8_t data)
{
	int error;

	error = MPU6050_write(reg, &data, 1);

	return (error);
}

int MPU6050_write(int start, const uint8_t *pData, int size)
{
	TWI_MasterWriteRead(&twiMaster,MPU6050_I2C_ADDRESS,&pData,size,0);

	return (0);  // return : no error
	
}

int TWIGetStatus()
{
	return twiMaster.status;
}
