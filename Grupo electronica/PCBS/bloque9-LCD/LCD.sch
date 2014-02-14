EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:LCD-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "14 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_4 P1
U 1 1 52FE5E4A
P 5700 3450
F 0 "P1" V 5650 3450 50  0000 C CNN
F 1 "i2cport-LCD" V 5750 3450 50  0000 C CNN
F 2 "" H 5700 3450 60  0000 C CNN
F 3 "" H 5700 3450 60  0000 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 52FE5E63
P 5300 3250
F 0 "#PWR01" H 5300 3210 30  0001 C CNN
F 1 "+3.3V" H 5300 3360 30  0000 C CNN
F 2 "" H 5300 3250 60  0000 C CNN
F 3 "" H 5300 3250 60  0000 C CNN
	1    5300 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3300 5300 3300
Wire Wire Line
	5300 3300 5300 3250
$Comp
L GND #PWR02
U 1 1 52FE5E73
P 5250 3400
F 0 "#PWR02" H 5250 3400 30  0001 C CNN
F 1 "GND" H 5250 3330 30  0001 C CNN
F 2 "" H 5250 3400 60  0000 C CNN
F 3 "" H 5250 3400 60  0000 C CNN
	1    5250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3400 5350 3400
Text Label 5350 3500 0    60   ~ 0
SCL
Text Label 5350 3600 0    60   ~ 0
SDA
Wire Wire Line
	5250 3600 5350 3600
$Comp
L CONN_4 P2
U 1 1 52FE6426
P 6450 3450
F 0 "P2" V 6400 3450 50  0000 C CNN
F 1 "CONN_4" V 6500 3450 50  0000 C CNN
F 2 "" H 6450 3450 60  0000 C CNN
F 3 "" H 6450 3450 60  0000 C CNN
	1    6450 3450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 52FE642C
P 6050 3250
F 0 "#PWR03" H 6050 3210 30  0001 C CNN
F 1 "+3.3V" H 6050 3360 30  0000 C CNN
F 2 "" H 6050 3250 60  0000 C CNN
F 3 "" H 6050 3250 60  0000 C CNN
	1    6050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3300 6050 3300
Wire Wire Line
	6050 3300 6050 3250
$Comp
L GND #PWR04
U 1 1 52FE6434
P 6000 3400
F 0 "#PWR04" H 6000 3400 30  0001 C CNN
F 1 "GND" H 6000 3330 30  0001 C CNN
F 2 "" H 6000 3400 60  0000 C CNN
F 3 "" H 6000 3400 60  0000 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3400 6100 3400
Text Label 6100 3500 0    60   ~ 0
SCL
Text Label 6100 3600 0    60   ~ 0
SDA
Wire Wire Line
	6000 3600 6100 3600
$EndSCHEMATC
