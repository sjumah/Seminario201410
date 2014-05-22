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
LIBS:ads7828
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "22 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADS7828 S1
U 1 1 537E3657
P 5450 3250
F 0 "S1" H 5450 3250 60  0000 C CNN
F 1 "ADS7828" H 5450 3250 60  0000 C CNN
F 2 "~" H 5450 3250 60  0000 C CNN
F 3 "~" H 5450 3250 60  0000 C CNN
	1    5450 3250
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 537E3666
P 6600 3900
F 0 "C2" H 6600 4000 40  0000 L CNN
F 1 "0.1uF" H 6606 3815 40  0000 L CNN
F 2 "~" H 6638 3750 30  0000 C CNN
F 3 "~" H 6600 3900 60  0000 C CNN
	1    6600 3900
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 537E367A
P 6550 3000
F 0 "C1" H 6550 3100 40  0000 L CNN
F 1 "1uF" H 6556 2915 40  0000 L CNN
F 2 "~" H 6588 2850 30  0000 C CNN
F 3 "~" H 6550 3000 60  0000 C CNN
	1    6550 3000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR01
U 1 1 537E368E
P 6550 2700
F 0 "#PWR01" H 6550 2800 30  0001 C CNN
F 1 "VDD" H 6550 2810 30  0000 C CNN
F 2 "" H 6550 2700 60  0000 C CNN
F 3 "" H 6550 2700 60  0000 C CNN
	1    6550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2800 6550 2800
Wire Wire Line
	6550 2800 6550 2700
$Comp
L GND #PWR02
U 1 1 537E36A0
P 6550 3250
F 0 "#PWR02" H 6550 3250 30  0001 C CNN
F 1 "GND" H 6550 3180 30  0001 C CNN
F 2 "" H 6550 3250 60  0000 C CNN
F 3 "" H 6550 3250 60  0000 C CNN
	1    6550 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 537E36AF
P 6350 4150
F 0 "#PWR03" H 6350 4150 30  0001 C CNN
F 1 "GND" H 6350 4080 30  0001 C CNN
F 2 "" H 6350 4150 60  0000 C CNN
F 3 "" H 6350 4150 60  0000 C CNN
	1    6350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4100 6600 4100
Wire Wire Line
	6100 4100 6100 3850
Wire Wire Line
	6100 3700 6600 3700
Wire Wire Line
	6350 3400 6350 4150
Connection ~ 6350 4100
Wire Wire Line
	6550 3200 6550 3250
$Comp
L CONN_4 P2
U 1 1 537E3727
P 7450 3000
F 0 "P2" V 7400 3000 50  0000 C CNN
F 1 "CONN_4" V 7500 3000 50  0000 C CNN
F 2 "" H 7450 3000 60  0000 C CNN
F 3 "" H 7450 3000 60  0000 C CNN
	1    7450 3000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR04
U 1 1 537E3745
P 7100 2800
F 0 "#PWR04" H 7100 2900 30  0001 C CNN
F 1 "VDD" H 7100 2910 30  0000 C CNN
F 2 "" H 7100 2800 60  0000 C CNN
F 3 "" H 7100 2800 60  0000 C CNN
	1    7100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2800 7100 2850
$Comp
L GND #PWR05
U 1 1 537E3767
P 6900 2950
F 0 "#PWR05" H 6900 2950 30  0001 C CNN
F 1 "GND" H 6900 2880 30  0001 C CNN
F 2 "" H 6900 2950 60  0000 C CNN
F 3 "" H 6900 2950 60  0000 C CNN
	1    6900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2950 7100 2950
Text Label 7100 3050 2    60   ~ 0
SCL
Text Label 7100 3150 2    60   ~ 0
SDA
Text Label 6100 3100 0    60   ~ 0
SCL
Text Label 6100 2950 0    60   ~ 0
SDA
Connection ~ 6100 3400
$Comp
L CONN_9 P1
U 1 1 537E38B9
P 3900 3550
F 0 "P1" V 3850 3550 60  0000 C CNN
F 1 "CONN_9" V 3950 3550 60  0000 C CNN
F 2 "" H 3900 3550 60  0000 C CNN
F 3 "" H 3900 3550 60  0000 C CNN
	1    3900 3550
	-1   0    0    -1  
$EndComp
Text Label 6100 3550 0    60   ~ 0
com
Text Label 4250 3950 0    60   ~ 0
com
Wire Wire Line
	4650 3850 4250 3850
Wire Wire Line
	4250 3750 4650 3750
Wire Wire Line
	4650 3750 4650 3700
Wire Wire Line
	4650 3550 4550 3550
Wire Wire Line
	4550 3550 4550 3650
Wire Wire Line
	4550 3650 4250 3650
Wire Wire Line
	4250 3550 4500 3550
Wire Wire Line
	4500 3550 4500 3400
Wire Wire Line
	4500 3400 4650 3400
Wire Wire Line
	4250 3450 4450 3450
Wire Wire Line
	4450 3450 4450 3250
Wire Wire Line
	4450 3250 4650 3250
Wire Wire Line
	4250 3350 4400 3350
Wire Wire Line
	4400 3350 4400 3100
Wire Wire Line
	4400 3100 4650 3100
Wire Wire Line
	4250 3250 4350 3250
Wire Wire Line
	4350 3250 4350 2950
Wire Wire Line
	4350 2950 4650 2950
Wire Wire Line
	4250 3150 4300 3150
Wire Wire Line
	4300 3150 4300 2800
Wire Wire Line
	4300 2800 4650 2800
Wire Wire Line
	6100 3400 6100 3250
Wire Wire Line
	6100 3400 6350 3400
$EndSCHEMATC