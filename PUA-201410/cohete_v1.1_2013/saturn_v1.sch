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
LIBS:BreakoutIMU-cache
LIBS:Datalogger-cache
LIBS:tarjetas-cache
LIBS:saturn_v1-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "31 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2400 3200 2300 3200
Wire Wire Line
	2300 3200 2300 3250
Wire Wire Line
	9300 4400 9400 4400
Connection ~ 2050 2800
Wire Wire Line
	1900 2800 2400 2800
Wire Wire Line
	4400 3300 4300 3300
Wire Wire Line
	9300 5500 9400 5500
Wire Wire Line
	9300 5300 9400 5300
Wire Wire Line
	9300 5100 9400 5100
Wire Wire Line
	9300 4600 9400 4600
Wire Wire Line
	9300 4200 9400 4200
Wire Wire Line
	9100 2800 9400 2800
Wire Wire Line
	9400 2800 9400 3200
Wire Wire Line
	9100 3200 10000 3200
Wire Wire Line
	4950 2100 4950 2150
Wire Wire Line
	2400 3700 2400 4000
Wire Wire Line
	4200 1750 4200 2000
Wire Wire Line
	4450 4900 4300 4900
Wire Wire Line
	4850 4800 4950 4800
Connection ~ 5600 4900
Wire Wire Line
	5450 4900 5600 4900
Connection ~ 2100 3400
Wire Wire Line
	1950 3400 2400 3400
Connection ~ 2100 4000
Wire Wire Line
	2400 4000 1950 4000
Wire Wire Line
	1550 4000 1550 3400
Wire Wire Line
	4450 4000 4300 4000
Wire Wire Line
	4450 4200 4300 4200
Wire Wire Line
	3300 5400 3300 5550
Wire Wire Line
	2050 2150 2050 2300
Wire Wire Line
	7600 5150 7750 5150
Wire Wire Line
	7500 3300 7500 3350
Wire Wire Line
	7500 3350 7400 3350
Wire Wire Line
	7400 2800 7500 2800
Wire Wire Line
	7050 2150 7050 2100
Wire Wire Line
	7500 2400 7450 2400
Wire Wire Line
	7450 2400 7450 2300
Wire Wire Line
	7350 2500 7500 2500
Wire Wire Line
	9650 2900 9100 2900
Wire Wire Line
	9200 3000 9100 3000
Wire Wire Line
	7550 4350 7700 4350
Wire Wire Line
	7600 4750 7700 4750
Wire Wire Line
	7700 3950 7700 3850
Wire Wire Line
	7700 3850 7600 3850
Wire Wire Line
	7550 4650 7700 4650
Wire Wire Line
	7550 4250 7700 4250
Wire Wire Line
	9650 2550 9650 2500
Wire Wire Line
	9650 2000 9650 2050
Wire Wire Line
	7350 2600 7500 2600
Wire Wire Line
	7250 1750 7250 1700
Wire Wire Line
	7250 1700 7050 1700
Wire Wire Line
	7050 2650 7050 2700
Wire Wire Line
	7050 2700 7500 2700
Wire Wire Line
	6800 2700 6800 2800
Wire Wire Line
	6800 2800 6900 2800
Wire Wire Line
	7650 5400 7650 5350
Wire Wire Line
	7650 5350 7750 5350
Wire Wire Line
	7600 5250 7750 5250
Connection ~ 3300 2500
Connection ~ 3300 5400
Wire Wire Line
	4450 4300 4300 4300
Wire Wire Line
	4450 3900 4300 3900
Wire Wire Line
	1350 3750 1350 3400
Wire Wire Line
	1350 3400 1550 3400
Wire Wire Line
	2400 3400 2400 3500
Connection ~ 5600 4800
Wire Wire Line
	4950 4900 4850 4900
Wire Wire Line
	4450 4800 4300 4800
Wire Wire Line
	4200 2200 4450 2200
Wire Wire Line
	4400 1550 4200 1550
Wire Wire Line
	2300 3000 2400 3000
Wire Wire Line
	5600 5050 5600 4800
Wire Wire Line
	5600 4800 5450 4800
Wire Wire Line
	3300 2500 3300 2250
Wire Wire Line
	4950 2600 4950 2550
Wire Wire Line
	9300 4100 9400 4100
Wire Wire Line
	9300 4500 9400 4500
Wire Wire Line
	9300 5000 9400 5000
Wire Wire Line
	9300 5200 9400 5200
Wire Wire Line
	9300 5400 9400 5400
Wire Wire Line
	4400 3200 4300 3200
Wire Wire Line
	4400 3100 4300 3100
Wire Wire Line
	9250 4300 9400 4300
Wire Wire Line
	2400 3000 2400 3100
$Comp
L GND #PWR?
U 1 1 50A9533B
P 2300 3250
F 0 "#PWR?" H 2300 3250 30  0001 C CNN
F 1 "GND" H 2300 3180 30  0001 C CNN
F 2 "" H 2300 3250 60  0001 C CNN
F 3 "" H 2300 3250 60  0001 C CNN
	1    2300 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 50A95334
P 2300 3000
F 0 "#PWR?" H 2300 3100 30  0001 C CNN
F 1 "VCC" H 2300 3100 30  0000 C CNN
F 2 "" H 2300 3000 60  0001 C CNN
F 3 "" H 2300 3000 60  0001 C CNN
	1    2300 3000
	1    0    0    -1  
$EndComp
Text Label 9300 4500 0    60   ~ 0
SCL
Text Label 9300 4400 0    60   ~ 0
X
Text Label 9250 4300 0    60   ~ 0
E
$Comp
L CONN_6 P5
U 1 1 507DAB62
P 9750 4350
F 0 "P5" V 9700 4350 60  0000 C CNN
F 1 "CONN_6" V 9800 4350 60  0000 C CNN
F 2 "" H 9750 4350 60  0001 C CNN
F 3 "" H 9750 4350 60  0001 C CNN
	1    9750 4350
	1    0    0    -1  
$EndComp
Text Label 1900 2800 0    60   ~ 0
RST
Text Label 4400 3100 0    60   ~ 0
MOSI
Text Label 4400 3300 0    60   ~ 0
SCLK
Text Label 4400 3200 0    60   ~ 0
MISO
$Comp
L GND #PWR01
U 1 1 507DA0D5
P 9300 5500
F 0 "#PWR01" H 9300 5500 30  0001 C CNN
F 1 "GND" H 9300 5430 30  0001 C CNN
F 2 "" H 9300 5500 60  0001 C CNN
F 3 "" H 9300 5500 60  0001 C CNN
	1    9300 5500
	1    0    0    -1  
$EndComp
Text Label 9300 5400 0    60   ~ 0
RST
Text Label 9300 5300 0    60   ~ 0
MISO
Text Label 9300 5200 0    60   ~ 0
SCLK
$Comp
L VCC #PWR02
U 1 1 507DA089
P 9300 5100
F 0 "#PWR02" H 9300 5200 30  0001 C CNN
F 1 "VCC" H 9300 5200 30  0000 C CNN
F 2 "" H 9300 5100 60  0001 C CNN
F 3 "" H 9300 5100 60  0001 C CNN
	1    9300 5100
	1    0    0    -1  
$EndComp
Text Label 9300 5000 0    60   ~ 0
MOSI
$Comp
L CONN_6 P3
U 1 1 507DA05C
P 9750 5250
F 0 "P3" V 9700 5250 60  0000 C CNN
F 1 "CONN_6" V 9800 5250 60  0000 C CNN
F 2 "" H 9750 5250 60  0001 C CNN
F 3 "" H 9750 5250 60  0001 C CNN
	1    9750 5250
	1    0    0    -1  
$EndComp
Text Label 9300 4600 0    60   ~ 0
SDA
$Comp
L GND #PWR03
U 1 1 507DA043
P 9300 4200
F 0 "#PWR03" H 9300 4200 30  0001 C CNN
F 1 "GND" H 9300 4130 30  0001 C CNN
F 2 "" H 9300 4200 60  0001 C CNN
F 3 "" H 9300 4200 60  0001 C CNN
	1    9300 4200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 507DA03B
P 9300 4100
F 0 "#PWR04" H 9300 4200 30  0001 C CNN
F 1 "VCC" H 9300 4200 30  0000 C CNN
F 2 "" H 9300 4100 60  0001 C CNN
F 3 "" H 9300 4100 60  0001 C CNN
	1    9300 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 507CEE2E
P 4950 2600
F 0 "#PWR05" H 4950 2600 30  0001 C CNN
F 1 "GND" H 4950 2530 30  0001 C CNN
F 2 "" H 4950 2600 60  0001 C CNN
F 3 "" H 4950 2600 60  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 507CEE29
P 4950 2100
F 0 "#PWR06" H 4950 2200 30  0001 C CNN
F 1 "VCC" H 4950 2200 30  0000 C CNN
F 2 "" H 4950 2100 60  0001 C CNN
F 3 "" H 4950 2100 60  0001 C CNN
	1    4950 2100
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 507CEE26
P 4950 2350
F 0 "C3" H 5000 2450 50  0000 L CNN
F 1 "10uF" H 5000 2250 50  0000 L CNN
F 2 "" H 4950 2350 60  0001 C CNN
F 3 "" H 4950 2350 60  0001 C CNN
	1    4950 2350
	1    0    0    -1  
$EndComp
Text Notes 8300 5500 1    60   ~ 0
PC interface
Text Notes 8250 4550 1    60   ~ 0
IMU interface
$Comp
L ATMEGA8-P IC1
U 1 1 507A43D7
P 3300 3900
F 0 "IC1" H 2600 5150 50  0000 L BNN
F 1 "ATMEGA8-P" H 3550 2500 50  0000 L BNN
F 2 "DIL28" H 3800 2425 50  0001 C CNN
F 3 "" H 3300 3900 60  0001 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
Text Notes 3600 1800 1    60   ~ 0
ALIM\nVCC GND
$Comp
L GND #PWR07
U 1 1 507A4200
P 4400 1550
F 0 "#PWR07" H 4400 1550 30  0001 C CNN
F 1 "GND" H 4400 1480 30  0001 C CNN
F 2 "" H 4400 1550 60  0001 C CNN
F 3 "" H 4400 1550 60  0001 C CNN
	1    4400 1550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 507A41E4
P 4450 2200
F 0 "#PWR08" H 4450 2300 30  0001 C CNN
F 1 "VCC" H 4450 2300 30  0000 C CNN
F 2 "" H 4450 2200 60  0001 C CNN
F 3 "" H 4450 2200 60  0001 C CNN
	1    4450 2200
	1    0    0    -1  
$EndComp
Text Notes 3700 2250 1    60   ~ 0
SWITCH
$Comp
L CONN_2 P2
U 1 1 507A41D2
P 3850 2100
F 0 "P2" V 3800 2100 40  0000 C CNN
F 1 "CONN_2" V 3900 2100 40  0000 C CNN
F 2 "" H 3850 2100 60  0001 C CNN
F 3 "" H 3850 2100 60  0001 C CNN
	1    3850 2100
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P1
U 1 1 507A41CA
P 3850 1650
F 0 "P1" V 3800 1650 40  0000 C CNN
F 1 "CONN_2" V 3900 1650 40  0000 C CNN
F 2 "" H 3850 1650 60  0001 C CNN
F 3 "" H 3850 1650 60  0001 C CNN
	1    3850 1650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 507A4166
P 5600 5050
F 0 "#PWR09" H 5600 5050 30  0001 C CNN
F 1 "GND" H 5600 4980 30  0001 C CNN
F 2 "" H 5600 5050 60  0001 C CNN
F 3 "" H 5600 5050 60  0001 C CNN
	1    5600 5050
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 507A415F
P 5200 4900
F 0 "R5" V 5280 4900 50  0000 C CNN
F 1 "R" V 5200 4900 50  0000 C CNN
F 2 "" H 5200 4900 60  0001 C CNN
F 3 "" H 5200 4900 60  0001 C CNN
	1    5200 4900
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 507A4156
P 5200 4800
F 0 "R4" V 5280 4800 50  0000 C CNN
F 1 "R" V 5200 4800 50  0000 C CNN
F 2 "" H 5200 4800 60  0001 C CNN
F 3 "" H 5200 4800 60  0001 C CNN
	1    5200 4800
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 507A4138
P 4650 4800
F 0 "D3" H 4650 4900 50  0000 C CNN
F 1 "LED" H 4650 4700 50  0000 C CNN
F 2 "" H 4650 4800 60  0001 C CNN
F 3 "" H 4650 4800 60  0001 C CNN
	1    4650 4800
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 507A4133
P 4650 4900
F 0 "D4" H 4650 5000 50  0000 C CNN
F 1 "LED" H 4650 4800 50  0000 C CNN
F 2 "" H 4650 4900 60  0001 C CNN
F 3 "" H 4650 4900 60  0001 C CNN
	1    4650 4900
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 507A40DA
P 1750 4000
F 0 "C2" H 1800 4100 50  0000 L CNN
F 1 "C" H 1800 3900 50  0000 L CNN
F 2 "" H 1750 4000 60  0001 C CNN
F 3 "" H 1750 4000 60  0001 C CNN
	1    1750 4000
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 507A40D6
P 1750 3400
F 0 "C1" H 1800 3500 50  0000 L CNN
F 1 "C" H 1800 3300 50  0000 L CNN
F 2 "" H 1750 3400 60  0001 C CNN
F 3 "" H 1750 3400 60  0001 C CNN
	1    1750 3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 507A40D1
P 1350 3750
F 0 "#PWR010" H 1350 3750 30  0001 C CNN
F 1 "GND" H 1350 3680 30  0001 C CNN
F 2 "" H 1350 3750 60  0001 C CNN
F 3 "" H 1350 3750 60  0001 C CNN
	1    1350 3750
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 507A40CB
P 2100 3700
F 0 "X1" H 2100 3850 60  0000 C CNN
F 1 "CRYSTAL" H 2100 3550 60  0000 C CNN
F 2 "" H 2100 3700 60  0001 C CNN
F 3 "" H 2100 3700 60  0001 C CNN
	1    2100 3700
	0    1    1    0   
$EndComp
Text Label 4450 4000 0    60   ~ 0
SCL
Text Label 4450 3900 0    60   ~ 0
SDA
Text Label 4450 4200 0    60   ~ 0
RX
Text Label 4450 4300 0    60   ~ 0
TX
$Comp
L GND #PWR011
U 1 1 507A407D
P 3300 5550
F 0 "#PWR011" H 3300 5550 30  0001 C CNN
F 1 "GND" H 3300 5480 30  0001 C CNN
F 2 "" H 3300 5550 60  0001 C CNN
F 3 "" H 3300 5550 60  0001 C CNN
	1    3300 5550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 507A4069
P 2050 2150
F 0 "#PWR012" H 2050 2250 30  0001 C CNN
F 1 "VCC" H 2050 2250 30  0000 C CNN
F 2 "" H 2050 2150 60  0001 C CNN
F 3 "" H 2050 2150 60  0001 C CNN
	1    2050 2150
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 507A4063
P 2050 2550
F 0 "R1" V 2130 2550 50  0000 C CNN
F 1 "R" V 2050 2550 50  0000 C CNN
F 2 "" H 2050 2550 60  0001 C CNN
F 3 "" H 2050 2550 60  0001 C CNN
	1    2050 2550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 507A404A
P 3300 2250
F 0 "#PWR013" H 3300 2350 30  0001 C CNN
F 1 "VCC" H 3300 2350 30  0000 C CNN
F 2 "" H 3300 2250 60  0001 C CNN
F 3 "" H 3300 2250 60  0001 C CNN
	1    3300 2250
	1    0    0    -1  
$EndComp
Text Label 7600 5250 0    60   ~ 0
TX
Text Label 7600 5150 0    60   ~ 0
RX
$Comp
L GND #PWR014
U 1 1 507A3F3B
P 7650 5400
F 0 "#PWR014" H 7650 5400 30  0001 C CNN
F 1 "GND" H 7650 5330 30  0001 C CNN
F 2 "" H 7650 5400 60  0001 C CNN
F 3 "" H 7650 5400 60  0001 C CNN
	1    7650 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 507A3F2F
P 8100 5250
F 0 "K1" V 8050 5250 50  0000 C CNN
F 1 "CONN_3" V 8150 5250 40  0000 C CNN
F 2 "" H 8100 5250 60  0001 C CNN
F 3 "" H 8100 5250 60  0001 C CNN
	1    8100 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 507A3ECF
P 7400 3350
F 0 "#PWR015" H 7400 3350 30  0001 C CNN
F 1 "GND" H 7400 3280 30  0001 C CNN
F 2 "" H 7400 3350 60  0001 C CNN
F 3 "" H 7400 3350 60  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 507A3EC6
P 6800 2700
F 0 "#PWR016" H 6800 2800 30  0001 C CNN
F 1 "VCC" H 6800 2800 30  0000 C CNN
F 2 "" H 6800 2700 60  0001 C CNN
F 3 "" H 6800 2700 60  0001 C CNN
	1    6800 2700
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 507A3EBE
P 7150 2800
F 0 "R7" V 7230 2800 50  0000 C CNN
F 1 "R" V 7150 2800 50  0000 C CNN
F 2 "" H 7150 2800 60  0001 C CNN
F 3 "" H 7150 2800 60  0001 C CNN
	1    7150 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 507A3EA4
P 7250 1750
F 0 "#PWR017" H 7250 1750 30  0001 C CNN
F 1 "GND" H 7250 1680 30  0001 C CNN
F 2 "" H 7250 1750 60  0001 C CNN
F 3 "" H 7250 1750 60  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 507A3E97
P 7050 1900
F 0 "D5" H 7050 2000 50  0000 C CNN
F 1 "LED" H 7050 1800 50  0000 C CNN
F 2 "" H 7050 1900 60  0001 C CNN
F 3 "" H 7050 1900 60  0001 C CNN
	1    7050 1900
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 507A3E8E
P 7050 2400
F 0 "R6" V 7130 2400 50  0000 C CNN
F 1 "R" V 7050 2400 50  0000 C CNN
F 2 "" H 7050 2400 60  0001 C CNN
F 3 "" H 7050 2400 60  0001 C CNN
	1    7050 2400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 507A3E80
P 7450 2300
F 0 "#PWR018" H 7450 2400 30  0001 C CNN
F 1 "VCC" H 7450 2400 30  0000 C CNN
F 2 "" H 7450 2300 60  0001 C CNN
F 3 "" H 7450 2300 60  0001 C CNN
	1    7450 2300
	1    0    0    -1  
$EndComp
Text Label 7350 2600 0    60   ~ 0
TX
Text Label 7350 2500 0    60   ~ 0
RX
$Comp
L VCC #PWR019
U 1 1 507A3E62
P 9650 2000
F 0 "#PWR019" H 9650 2100 30  0001 C CNN
F 1 "VCC" H 9650 2100 30  0000 C CNN
F 2 "" H 9650 2000 60  0001 C CNN
F 3 "" H 9650 2000 60  0001 C CNN
	1    9650 2000
	1    0    0    -1  
$EndComp
$Comp
L LED D6
U 1 1 507A3E52
P 9650 2700
F 0 "D6" H 9650 2800 50  0000 C CNN
F 1 "LED" H 9650 2600 50  0000 C CNN
F 2 "" H 9650 2700 60  0001 C CNN
F 3 "" H 9650 2700 60  0001 C CNN
	1    9650 2700
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 507A3E4B
P 9650 2300
F 0 "R8" V 9730 2300 50  0000 C CNN
F 1 "R" V 9650 2300 50  0000 C CNN
F 2 "" H 9650 2300 60  0001 C CNN
F 3 "" H 9650 2300 60  0001 C CNN
	1    9650 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 507A3E3D
P 9200 3000
F 0 "#PWR020" H 9200 3000 30  0001 C CNN
F 1 "GND" H 9200 2930 30  0001 C CNN
F 2 "" H 9200 3000 60  0001 C CNN
F 3 "" H 9200 3000 60  0001 C CNN
	1    9200 3000
	1    0    0    -1  
$EndComp
Text Label 9200 3200 0    60   ~ 0
CTSN
Text Label 7550 4350 0    60   ~ 0
SCL
Text Label 7550 4250 0    60   ~ 0
SDA
$Comp
L VCC #PWR021
U 1 1 507A3D73
P 7600 4750
F 0 "#PWR021" H 7600 4850 30  0001 C CNN
F 1 "VCC" H 7600 4850 30  0000 C CNN
F 2 "" H 7600 4750 60  0001 C CNN
F 3 "" H 7600 4750 60  0001 C CNN
	1    7600 4750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR022
U 1 1 507A3D69
P 7550 4650
F 0 "#PWR022" H 7550 4650 30  0001 C CNN
F 1 "GND" H 7550 4580 30  0001 C CNN
F 2 "" H 7550 4650 60  0001 C CNN
F 3 "" H 7550 4650 60  0001 C CNN
	1    7550 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 507A3D60
P 7600 3850
F 0 "#PWR023" H 7600 3850 30  0001 C CNN
F 1 "GND" H 7600 3780 30  0001 C CNN
F 2 "" H 7600 3850 60  0001 C CNN
F 3 "" H 7600 3850 60  0001 C CNN
	1    7600 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN_10 P4
U 1 1 507A3D48
P 8050 4300
F 0 "P4" V 8000 4300 60  0000 C CNN
F 1 "CONN_10" V 8100 4300 60  0000 C CNN
F 2 "" H 8050 4300 60  0001 C CNN
F 3 "" H 8050 4300 60  0001 C CNN
	1    8050 4300
	1    0    0    1   
$EndComp
Text Notes 7350 7550 0    60   ~ 0
Version ligera - PUA201220
$Comp
L XBEE-1B1 U1
U 1 1 507A363A
P 8300 2800
F 0 "U1" H 8300 2850 50  0000 C CNN
F 1 "XBEE-1B1" H 8300 2750 50  0000 C CNN
F 2 "" H 8300 2800 60  0001 C CNN
F 3 "" H 8300 2800 60  0001 C CNN
	1    8300 2800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53892FFF
P 10000 2950
F 0 "R?" V 10080 2950 40  0000 C CNN
F 1 "R" V 10007 2951 40  0000 C CNN
F 2 "~" V 9930 2950 30  0000 C CNN
F 3 "~" H 10000 2950 30  0000 C CNN
	1    10000 2950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5389300E
P 10000 2650
F 0 "#PWR?" H 10000 2750 30  0001 C CNN
F 1 "VCC" H 10000 2750 30  0000 C CNN
F 2 "" H 10000 2650 60  0000 C CNN
F 3 "" H 10000 2650 60  0000 C CNN
	1    10000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2650 10000 2700
Connection ~ 9400 3200
$EndSCHEMATC
