EESchema Schematic File Version 2  date 20/02/2014 23:52:16
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
LIBS:atsam4
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
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
Wire Wire Line
	7750 1250 7750 1400
Connection ~ 8650 2250
Wire Wire Line
	7750 2550 8100 2550
Wire Wire Line
	8100 2550 8100 2250
Wire Wire Line
	8100 2250 9100 2250
Connection ~ 9100 2800
Wire Wire Line
	9100 2750 9100 2850
Wire Wire Line
	9100 2300 9250 2300
Wire Wire Line
	9650 2500 9900 2500
Wire Wire Line
	9900 2500 9900 2550
Wire Wire Line
	7750 1650 8050 1650
Wire Wire Line
	8050 1650 8050 1600
Wire Wire Line
	8350 1050 8400 1050
Wire Wire Line
	8400 1050 8400 900 
Connection ~ 8000 2950
Wire Wire Line
	7750 3100 8000 3100
Connection ~ 7850 3700
Wire Wire Line
	7850 3700 7750 3700
Wire Wire Line
	7750 3400 7850 3400
Wire Wire Line
	7850 3400 7850 3900
Wire Wire Line
	7750 3550 7850 3550
Connection ~ 7850 3550
Wire Wire Line
	8000 2950 7750 2950
Wire Wire Line
	7750 3250 8000 3250
Wire Wire Line
	8000 3250 8000 2900
Connection ~ 8000 3100
Wire Wire Line
	7750 1050 7850 1050
Wire Wire Line
	9650 2800 9650 2300
Connection ~ 9650 2500
Wire Wire Line
	9100 2800 9250 2800
Wire Wire Line
	9100 2250 9100 2350
Connection ~ 9100 2300
Wire Wire Line
	7750 2700 8350 2700
Wire Wire Line
	8350 2700 8350 2850
Wire Wire Line
	8350 2850 9100 2850
Connection ~ 8650 2850
$Comp
L GND #PWR?
U 1 1 5306D9A5
P 9900 2550
F 0 "#PWR?" H 9900 2550 30  0001 C CNN
F 1 "GND" H 9900 2480 30  0001 C CNN
	1    9900 2550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5306D9A1
P 9450 2800
F 0 "C?" H 9500 2900 50  0000 L CNN
F 1 "C" H 9500 2700 50  0000 L CNN
	1    9450 2800
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5306D99C
P 9450 2300
F 0 "C?" H 9500 2400 50  0000 L CNN
F 1 "C" H 9500 2200 50  0000 L CNN
	1    9450 2300
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5306D993
P 9100 2550
F 0 "C?" H 9150 2650 50  0000 L CNN
F 1 "C" H 9150 2450 50  0000 L CNN
	1    9100 2550
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X?
U 1 1 5306D98D
P 8650 2550
F 0 "X?" H 8650 2700 60  0000 C CNN
F 1 "CRYSTAL" H 8650 2400 60  0000 C CNN
	1    8650 2550
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR?
U 1 1 5306D792
P 8050 1600
F 0 "#PWR?" H 8050 1700 30  0001 C CNN
F 1 "VDD" H 8050 1710 30  0000 C CNN
	1    8050 1600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5306D767
P 8100 1050
F 0 "R?" V 8180 1050 50  0000 C CNN
F 1 "R" V 8100 1050 50  0000 C CNN
	1    8100 1050
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR?
U 1 1 5306D763
P 8400 900
F 0 "#PWR?" H 8400 1000 30  0001 C CNN
F 1 "VDD" H 8400 1010 30  0000 C CNN
	1    8400 900 
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 5306D733
P 8000 2900
F 0 "#PWR?" H 8000 3000 30  0001 C CNN
F 1 "VDD" H 8000 3010 30  0000 C CNN
	1    8000 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5306D71A
P 7850 3900
F 0 "#PWR?" H 7850 3900 30  0001 C CNN
F 1 "GND" H 7850 3830 30  0001 C CNN
	1    7850 3900
	1    0    0    -1  
$EndComp
$Comp
L ATSAM4LS aAT?
U 1 1 5306D428
P 6000 3500
F 0 "aAT?" H 6000 3350 60  0000 C CNN
F 1 "ATSAM4LS" H 6000 3500 60  0000 C CNN
F 2 "~" H 6000 3500 60  0000 C CNN
F 3 "~" H 6000 3500 60  0000 C CNN
	1    6000 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
