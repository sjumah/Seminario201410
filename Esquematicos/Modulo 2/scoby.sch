EESchema Schematic File Version 2  date 17/02/2014 10:43:51 a. m.
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
LIBS:scoby-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "Reguladores de voltaje"
Date "17 feb 2014"
Rev "v0.1"
Comp "Universidad de los Andes"
Comment1 "autor: Grupo 2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4700 3850
Wire Wire Line
	4700 3850 6150 3850
Connection ~ 4300 1000
Wire Wire Line
	5700 1000 4300 1000
Connection ~ 2450 1000
Wire Wire Line
	2450 1350 2450 750 
Wire Wire Line
	2450 750  4300 750 
Wire Wire Line
	4300 750  4300 1700
Wire Wire Line
	4300 1700 4150 1700
Connection ~ 5900 3850
Wire Wire Line
	3650 3850 4000 3850
Connection ~ 4800 5700
Connection ~ 5250 5700
Wire Wire Line
	5900 5250 5900 5700
Wire Wire Line
	5900 5700 2300 5700
Connection ~ 3800 3850
Wire Wire Line
	3050 4700 2850 4700
Connection ~ 2600 4050
Wire Wire Line
	3050 5150 2600 5150
Wire Wire Line
	2600 4850 3050 4850
Connection ~ 2300 4050
Wire Wire Line
	1950 4200 1950 4050
Wire Wire Line
	1950 4200 1300 4200
Connection ~ 3600 5700
Wire Wire Line
	2300 5700 2300 4650
Connection ~ 2600 5000
Wire Wire Line
	4550 4750 5250 4750
Wire Wire Line
	3600 5700 3600 5450
Connection ~ 4800 5150
Wire Wire Line
	4800 5450 4000 5450
Connection ~ 4800 5000
Wire Wire Line
	4800 5150 4550 5150
Wire Wire Line
	3050 4550 3050 4250
Wire Wire Line
	3050 4250 3600 4250
Wire Wire Line
	4550 4900 4800 4900
Wire Wire Line
	4800 5000 4550 5000
Wire Wire Line
	4550 4650 4800 4650
Connection ~ 4800 4900
Wire Wire Line
	4800 4650 4800 5900
Connection ~ 4800 5450
Wire Wire Line
	5250 5700 5250 5250
Wire Wire Line
	5250 4850 5250 4050
Wire Wire Line
	2600 5150 2600 4050
Connection ~ 2600 4850
Connection ~ 5250 4750
Wire Wire Line
	2300 4250 2300 4050
Wire Wire Line
	4000 3850 4000 4250
Wire Wire Line
	3800 3850 3800 4250
Wire Wire Line
	3050 5000 2600 5000
Wire Wire Line
	5250 4050 1950 4050
Wire Wire Line
	3050 3850 2850 3850
Wire Wire Line
	5900 3850 5900 4850
Connection ~ 4000 3850
Connection ~ 3600 1000
Wire Wire Line
	5500 1000 5500 2000
Wire Wire Line
	2450 1000 2650 1000
Wire Wire Line
	4850 1200 1550 1200
Wire Wire Line
	2200 2150 2650 2150
Wire Wire Line
	3400 1400 3400 1000
Wire Wire Line
	3600 1400 3600 1000
Wire Wire Line
	1900 1200 1900 1400
Connection ~ 4850 1900
Connection ~ 2200 2000
Wire Wire Line
	2200 1200 2200 2300
Wire Wire Line
	4850 1200 4850 2000
Wire Wire Line
	4850 2850 4850 2400
Connection ~ 4400 2600
Wire Wire Line
	4400 3050 4400 1800
Connection ~ 4400 2050
Wire Wire Line
	4400 1800 4150 1800
Wire Wire Line
	4400 2150 4150 2150
Wire Wire Line
	4400 2050 4150 2050
Wire Wire Line
	3200 1400 2650 1400
Wire Wire Line
	2650 1400 2650 1700
Wire Wire Line
	4400 2300 4150 2300
Connection ~ 4400 2150
Wire Wire Line
	4400 2600 3600 2600
Connection ~ 4400 2300
Wire Wire Line
	3200 2600 3200 2850
Wire Wire Line
	4850 1900 4150 1900
Connection ~ 2200 2150
Wire Wire Line
	1900 1800 1900 2850
Connection ~ 3200 2850
Wire Wire Line
	900  1350 1550 1350
Wire Wire Line
	1550 1350 1550 1200
Connection ~ 1900 1200
Wire Wire Line
	2650 2000 2200 2000
Wire Wire Line
	2200 2300 2650 2300
Connection ~ 2200 1200
Wire Wire Line
	2650 1850 2450 1850
Connection ~ 3400 1000
Wire Wire Line
	1900 2850 5500 2850
Wire Wire Line
	5500 2850 5500 2400
Connection ~ 4850 2850
Connection ~ 5500 1000
Wire Wire Line
	4550 4550 4700 4550
Wire Wire Line
	4700 4550 4700 3600
Wire Wire Line
	4700 3600 2850 3600
Wire Wire Line
	2850 3600 2850 4200
Connection ~ 2850 3850
Wire Wire Line
	3600 1000 3250 1000
Text Label 6050 3850 0    60   ~ 0
Vout5
Text Label 5700 1000 0    60   ~ 0
Vout
$Comp
L C C4
U 1 1 52FE8203
P 5250 5050
F 0 "C4" H 5300 5150 50  0000 L CNN
F 1 "1uF" H 5300 4950 50  0000 L CNN
	1    5250 5050
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 52FE8202
P 2300 4450
F 0 "C2" H 2350 4550 50  0000 L CNN
F 1 "10uF" H 2350 4350 50  0000 L CNN
	1    2300 4450
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 52FE8201
P 5900 5050
F 0 "C6" H 5950 5150 50  0000 L CNN
F 1 "22uF" H 5950 4950 50  0000 L CNN
	1    5900 5050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 52FE8200
P 2850 4450
F 0 "R2" V 2930 4450 50  0000 C CNN
F 1 "1M" V 2850 4450 50  0000 C CNN
	1    2850 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 52FE81FF
P 4800 5900
F 0 "#PWR4" H 4800 5900 30  0001 C CNN
F 1 "GND" H 4800 5830 30  0001 C CNN
	1    4800 5900
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 52FE81FE
P 3350 3850
F 0 "L2" V 3300 3850 40  0000 C CNN
F 1 "6.8uH" V 3450 3850 40  0000 C CNN
	1    3350 3850
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR2
U 1 1 52FE81FD
P 1300 4200
F 0 "#PWR2" H 1300 4150 20  0001 C CNN
F 1 "+12V" H 1300 4300 30  0000 C CNN
	1    1300 4200
	1    0    0    -1  
$EndComp
$Comp
L TPS62111 U2
U 1 1 52FE81FC
P 3800 4850
F 0 "U2" H 3900 5300 70  0000 L CNN
F 1 "TPS62112" H 3850 4400 70  0000 L CNN
F 2 "TPS62112" H 3800 4850 60  0001 C CNN
	1    3800 4850
	1    0    0    -1  
$EndComp
$Comp
L TPS62111 U1
U 1 1 52FE7E74
P 3400 2000
F 0 "U1" H 3500 2450 70  0000 L CNN
F 1 "TPS62111" H 3450 1550 70  0000 L CNN
	1    3400 2000
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR1
U 1 1 52FE79E1
P 900 1350
F 0 "#PWR1" H 900 1300 20  0001 C CNN
F 1 "+12V" H 900 1450 30  0000 C CNN
	1    900  1350
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 52FE7268
P 2950 1000
F 0 "L1" V 2900 1000 40  0000 C CNN
F 1 "6.8uH" V 3050 1000 40  0000 C CNN
	1    2950 1000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR3
U 1 1 52FE6ECA
P 4400 3050
F 0 "#PWR3" H 4400 3050 30  0001 C CNN
F 1 "GND" H 4400 2980 30  0001 C CNN
	1    4400 3050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 52FE6EAD
P 2450 1600
F 0 "R1" V 2530 1600 50  0000 C CNN
F 1 "1M" V 2450 1600 50  0000 C CNN
	1    2450 1600
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 52FE6E4E
P 5500 2200
F 0 "C5" H 5550 2300 50  0000 L CNN
F 1 "22uF" H 5550 2100 50  0000 L CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 52FE6E4C
P 1900 1600
F 0 "C1" H 1950 1700 50  0000 L CNN
F 1 "10uF" H 1950 1500 50  0000 L CNN
	1    1900 1600
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 52FE6AC8
P 4850 2200
F 0 "C3" H 4900 2300 50  0000 L CNN
F 1 "1uF" H 4900 2100 50  0000 L CNN
	1    4850 2200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
