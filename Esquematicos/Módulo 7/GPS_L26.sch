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
LIBS:QUECTEL_L26
LIBS:vga_Sch
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date "21 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L QUECTEL_L26 GPS?
U 1 1 5306BC2A
P 5600 4050
F 0 "GPS?" H 5600 3950 50  0000 C CNN
F 1 "QUECTEL_L26" H 5600 4150 50  0000 C CNN
F 2 "MODULE" H 5600 4050 50  0001 C CNN
F 3 "DOCUMENTATION" H 5600 4050 50  0001 C CNN
	1    5600 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5306C137
P 8850 2000
F 0 "#PWR?" H 8850 2000 30  0001 C CNN
F 1 "GND" H 8850 1930 30  0001 C CNN
F 2 "" H 8850 2000 60  0000 C CNN
F 3 "" H 8850 2000 60  0000 C CNN
	1    8850 2000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5306C14A
P 8850 1550
F 0 "#PWR?" H 8850 1510 30  0001 C CNN
F 1 "+3.3V" H 8850 1660 30  0000 C CNN
F 2 "" H 8850 1550 60  0000 C CNN
F 3 "" H 8850 1550 60  0000 C CNN
	1    8850 1550
	1    0    0    -1  
$EndComp
Text Label 6750 3700 0    39   ~ 0
GND
Text Label 6750 4400 0    39   ~ 0
GND
Text Label 6750 4300 0    39   ~ 0
GND
Text Label 4400 4300 0    39   ~ 0
GND
Text Label 4400 4100 0    39   ~ 0
RESET
Text Label 8850 1650 0    39   ~ 0
3V3
Text Label 8850 1900 0    39   ~ 0
GND
Text Label 6750 3800 0    39   ~ 0
3V3
$Comp
L PN2222A Q?
U 1 1 5306D6A7
P 2400 4150
F 0 "Q?" H 2400 4002 40  0000 R CNN
F 1 "PN2222A" H 2400 4300 40  0000 R CNN
F 2 "TO92" H 2300 4252 29  0000 C CNN
F 3 "~" H 2400 4150 60  0000 C CNN
	1    2400 4150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5306D6D8
P 1850 4150
F 0 "R?" V 1930 4150 40  0000 C CNN
F 1 "R" V 1857 4151 40  0000 C CNN
F 2 "~" V 1780 4150 30  0000 C CNN
F 3 "~" H 1850 4150 30  0000 C CNN
	1    1850 4150
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5306D6E7
P 2500 4700
F 0 "R?" V 2580 4700 40  0000 C CNN
F 1 "R" V 2507 4701 40  0000 C CNN
F 2 "~" V 2430 4700 30  0000 C CNN
F 3 "~" H 2500 4700 30  0000 C CNN
	1    2500 4700
	-1   0    0    1   
$EndComp
Text Label 2600 3750 0    39   ~ 0
RESET
Text Label 2500 5100 0    39   ~ 0
GND
Text Label 1450 4150 0    39   ~ 0
RST
NoConn ~ 6650 3900
Text Label 4400 3800 0    39   ~ 0
1PPS
$Comp
L LED D?
U 1 1 5306D9E5
P 8850 4350
F 0 "D?" H 8850 4450 50  0000 C CNN
F 1 "LED" H 8850 4250 50  0000 C CNN
F 2 "~" H 8850 4350 60  0000 C CNN
F 3 "~" H 8850 4350 60  0000 C CNN
	1    8850 4350
	0    1    1    0   
$EndComp
Text Label 8850 3950 3    39   ~ 0
1PPS
$Comp
L R R?
U 1 1 5306DA08
P 8850 5000
F 0 "R?" V 8930 5000 40  0000 C CNN
F 1 "R" V 8857 5001 40  0000 C CNN
F 2 "~" V 8780 5000 30  0000 C CNN
F 3 "~" H 8850 5000 30  0000 C CNN
	1    8850 5000
	1    0    0    -1  
$EndComp
Text Label 8850 5350 3    39   ~ 0
GND
Text Label 4400 4200 0    39   ~ 0
VCC_RF
Text Label 4400 4000 0    39   ~ 0
V_ANT
$Comp
L R R?
U 1 1 5306DB69
P 4250 6900
F 0 "R?" V 4330 6900 40  0000 C CNN
F 1 "R" V 4257 6901 40  0000 C CNN
F 2 "~" V 4180 6900 30  0000 C CNN
F 3 "~" H 4250 6900 30  0000 C CNN
	1    4250 6900
	0    -1   -1   0   
$EndComp
Text Label 3750 6900 0    39   ~ 0
V_ANT
Text Label 4600 6900 0    39   ~ 0
VCC_RF
Text Label 4400 4400 0    39   ~ 0
RF_IN
$Comp
L R R?
U 1 1 5306DBDC
P 2000 6450
F 0 "R?" V 2080 6450 40  0000 C CNN
F 1 "R" V 2007 6451 40  0000 C CNN
F 2 "~" V 1930 6450 30  0000 C CNN
F 3 "~" H 2000 6450 30  0000 C CNN
	1    2000 6450
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5306DBEB
P 1500 6850
F 0 "C?" H 1500 6950 40  0000 L CNN
F 1 "C" H 1506 6765 40  0000 L CNN
F 2 "~" H 1538 6700 30  0000 C CNN
F 3 "~" H 1500 6850 60  0000 C CNN
	1    1500 6850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5306DBFA
P 2500 6850
F 0 "C?" H 2500 6950 40  0000 L CNN
F 1 "C" H 2506 6765 40  0000 L CNN
F 2 "~" H 2538 6700 30  0000 C CNN
F 3 "~" H 2500 6850 60  0000 C CNN
	1    2500 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5306DC45
P 2500 7250
F 0 "#PWR?" H 2500 7250 30  0001 C CNN
F 1 "GND" H 2500 7180 30  0001 C CNN
F 2 "" H 2500 7250 60  0000 C CNN
F 3 "" H 2500 7250 60  0000 C CNN
	1    2500 7250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5306DC63
P 1500 7250
F 0 "#PWR?" H 1500 7250 30  0001 C CNN
F 1 "GND" H 1500 7180 30  0001 C CNN
F 2 "" H 1500 7250 60  0000 C CNN
F 3 "" H 1500 7250 60  0000 C CNN
	1    1500 7250
	1    0    0    -1  
$EndComp
Text Label 2600 6450 0    39   ~ 0
RF_IN
Text Label 1200 6450 0    39   ~ 0
Active_Antenna
Text Label 4250 3700 0    39   ~ 0
Sleep_GPS
NoConn ~ 4550 3900
$Comp
L C C?
U 1 1 5306DE7B
P 5400 1750
F 0 "C?" H 5400 1850 40  0000 L CNN
F 1 "C" H 5406 1665 40  0000 L CNN
F 2 "~" H 5438 1600 30  0000 C CNN
F 3 "~" H 5400 1750 60  0000 C CNN
	1    5400 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5306DE8A
P 5750 1750
F 0 "C?" H 5750 1850 40  0000 L CNN
F 1 "C" H 5756 1665 40  0000 L CNN
F 2 "~" H 5788 1600 30  0000 C CNN
F 3 "~" H 5750 1750 60  0000 C CNN
	1    5750 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5306DF04
P 5600 2150
F 0 "#PWR?" H 5600 2150 30  0001 C CNN
F 1 "GND" H 5600 2080 30  0001 C CNN
F 2 "" H 5600 2150 60  0000 C CNN
F 3 "" H 5600 2150 60  0000 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
Text Label 5500 1300 0    39   ~ 0
3V3
Text Label 2650 1550 0    39   ~ 0
3V3
Text Label 2650 1650 0    39   ~ 0
GND
Text Label 2650 1750 0    39   ~ 0
GPS_TX
Text Label 2650 1850 0    39   ~ 0
GPS_RX
Text Label 2650 1950 0    39   ~ 0
Sleep_GPS
Wire Wire Line
	6650 3700 6750 3700
Wire Wire Line
	6650 4400 6750 4400
Wire Wire Line
	6650 4300 6750 4300
Wire Wire Line
	4550 4300 4400 4300
Wire Wire Line
	4550 4100 4400 4100
Wire Wire Line
	8850 1650 8850 1550
Wire Wire Line
	8850 1900 8850 2000
Wire Wire Line
	6750 3800 6650 3800
Wire Wire Line
	2100 4150 2200 4150
Wire Wire Line
	2500 4450 2500 4350
Wire Wire Line
	2500 3950 2500 3750
Wire Wire Line
	2500 3750 2600 3750
Wire Wire Line
	2500 4950 2500 5100
Wire Wire Line
	1450 4150 1600 4150
Wire Wire Line
	4400 3800 4550 3800
Wire Wire Line
	8850 3950 8850 4150
Wire Wire Line
	8850 4550 8850 4750
Wire Wire Line
	8850 5250 8850 5350
Wire Wire Line
	4400 4000 4550 4000
Wire Wire Line
	4400 4200 4550 4200
Wire Wire Line
	4500 6900 4600 6900
Wire Wire Line
	3750 6900 4000 6900
Wire Wire Line
	4400 4400 4550 4400
Wire Wire Line
	2250 6450 2600 6450
Wire Wire Line
	2500 6450 2500 6650
Wire Wire Line
	1200 6450 1750 6450
Wire Wire Line
	1500 6450 1500 6650
Wire Wire Line
	2500 7050 2500 7250
Wire Wire Line
	1500 7050 1500 7250
Connection ~ 2500 6450
Connection ~ 1500 6450
Wire Wire Line
	4250 3700 4550 3700
Wire Wire Line
	5400 1550 5400 1500
Wire Wire Line
	5400 1500 5750 1500
Wire Wire Line
	5750 1500 5750 1550
Wire Wire Line
	5400 1950 5400 2000
Wire Wire Line
	5400 2000 5750 2000
Wire Wire Line
	5750 2000 5750 1950
Wire Wire Line
	5600 2150 5600 2000
Connection ~ 5600 2000
Wire Wire Line
	5500 1300 5500 1500
Connection ~ 5500 1500
Wire Wire Line
	2350 1550 2650 1550
Wire Wire Line
	2350 1650 2650 1650
Wire Wire Line
	2350 1750 2650 1750
Wire Wire Line
	2350 1850 2650 1850
Wire Wire Line
	2350 1950 2650 1950
Wire Notes Line
	1100 1100 1100 2700
Wire Notes Line
	1100 2700 3500 2700
Wire Notes Line
	3500 2700 3500 1050
Wire Notes Line
	3500 1050 1100 1050
Wire Notes Line
	1100 3400 1100 5450
Wire Notes Line
	1100 5450 3550 5450
Wire Notes Line
	3550 5450 3550 3400
Wire Notes Line
	3550 3400 1100 3400
Wire Notes Line
	1100 5900 1100 7700
Wire Notes Line
	1100 7700 5450 7700
Wire Notes Line
	5450 7700 5450 5900
Wire Notes Line
	5450 5900 1100 5900
Wire Notes Line
	4350 1050 4350 2700
Wire Notes Line
	4350 2700 6850 2700
Wire Notes Line
	6850 2700 6850 1050
Wire Notes Line
	6850 1050 4350 1050
Wire Notes Line
	8200 1050 8200 2700
Wire Notes Line
	8200 2700 9550 2700
Wire Notes Line
	9550 2700 9550 1050
Wire Notes Line
	9550 1050 8200 1050
Wire Notes Line
	7750 3550 7750 6100
Wire Notes Line
	7750 6100 10000 6100
Wire Notes Line
	10000 6100 10000 3500
Wire Notes Line
	10000 3500 7750 3500
Wire Notes Line
	4000 3250 4000 5400
Wire Notes Line
	4000 5400 7250 5400
Wire Notes Line
	7250 5400 7250 3250
Wire Notes Line
	7250 3250 4000 3250
Text Notes 1550 2500 0    59   ~ 0
Conector para Microcontrolador\n
Text Notes 1000 5600 0    59   ~ 0
Circuito para Reset. Activo Alto desde el Microcontrolador\n
Text Notes 2600 7500 0    59   ~ 0
Circuito para Antena Activa\n
Text Notes 5050 5100 0    59   ~ 0
Módulo GPS, Quectel L26\n
Text Notes 8250 5850 0    59   ~ 0
Circuito de "Hello World"\n
Text Notes 8400 2500 0    59   ~ 0
Alimentación del GPS\n
Text Notes 4250 2850 0    59   ~ 0
Regulación de voltaje (debe ubicarse cerca del módulo L26)\n
$Comp
L CONN_6 P?
U 1 1 5306E36A
P 2000 1800
F 0 "P?" V 1950 1800 60  0000 C CNN
F 1 "CONN_6" V 2050 1800 60  0000 C CNN
F 2 "" H 2000 1800 60  0000 C CNN
F 3 "" H 2000 1800 60  0000 C CNN
	1    2000 1800
	-1   0    0    1   
$EndComp
Text Label 2650 2050 0    39   ~ 0
RST
Wire Wire Line
	2650 2050 2350 2050
$EndSCHEMATC
