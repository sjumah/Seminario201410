/*
 *
 * Created: 22/08/2013 11:52:05 p. m.
 *  Author: t-carna
 */ 


#include <avr/io.h>
#include "mappingMPU6050.h"
#include "twi_master.h"

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
int MPU6050_read(int start, uint8_t *data_rec, int size)
{
	/*
	TWI_MasterRead(&twiMaster,MPU6050_I2C_ADDRESS,size);
	while (twiMaster.status != TWIM_STATUS_READY);
	int i;
	for (i=0;i<size;i++)
	{
		buffer[i]=twiMaster.readData[i];
	}
	twiMaster.result = TWIM_RESULT_UNKNOWN;
	
	*/

	twi_package_t packet_received = {
		
		.addr[0]      = start,      // TWI slave memory address data MSB
		.addr_length  = sizeof (uint8_t),     // TWI slave memory address data size
		
		.chip         = MPU6050_I2C_ADDRESS,      // TWI slave bus address
		.buffer       = data_rec,        // transfer data destination buffer
		.length       = size   // transfer data size (bytes)
	};

	// Perform a multi-byte read access then check the result.
	while (twi_master_read(TWI_EXAMPLE, &packet_received) != TWI_SUCCESS);
	return 0;
	
}

int MPU6050_write_reg(int reg, uint8_t data)
{
	int error;

	error = MPU6050_write(reg, &data, 1);

	return (error);
}

int MPU6050_write(int start, const uint8_t *pData, int size)
{
	//TWI_MasterWriteRead(&twiMaster,MPU6050_I2C_ADDRESS,pData,size,0);
	//while (twiMaster.status != TWIM_STATUS_READY);
	
	 twi_package_t packet = {
		 
		 .addr[0]      = start,      // TWI slave memory address data MSB
		 .addr_length  = sizeof (uint8_t),     // TWI slave memory address data size
		 
		 .chip         = MPU6050_I2C_ADDRESS,      // TWI slave bus address
		 .buffer       = (void *)pData, // transfer data source buffer
		 .length       = size   // transfer data size (bytes)
	 };

	 // Perform a multi-byte write access then check the result.
	 while (twi_master_write(TWI_EXAMPLE, &packet) != TWI_SUCCESS);
	 
	return (0);  // return : no error
	
}