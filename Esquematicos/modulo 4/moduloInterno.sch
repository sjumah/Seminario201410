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
LIBS:bq27510
LIBS:modulo4-cache
LIBS:modulo4-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L BQ27510 U?
U 1 1 52FE9FCC
P 5650 3350
F 0 "U?" H 5650 3750 60  0000 C CNN
F 1 "BQ27510" H 5650 2650 60  0000 C CNN
F 2 "~" H 5450 3400 60  0000 C CNN
F 3 "~" H 5450 3400 60  0000 C CNN
	1    5650 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52FE9FCD
P 4500 3100
F 0 "#PWR?" H 4500 3100 30  0001 C CNN
F 1 "GND" H 4500 3030 30  0001 C CNN
F 2 "" H 4500 3100 60  0000 C CNN
F 3 "" H 4500 3100 60  0000 C CNN
	1    4500 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3100 4750 3100
Wire Wire Line
	4400 3250 4750 3250
Wire Wire Line
	4750 3400 4600 3400
Wire Wire Line
	4600 3400 4600 3550
Wire Wire Line
	3750 3550 4750 3550
Wire Wire Line
	4750 3700 4400 3700
Wire Wire Line
	4400 3250 4400 3800
Connection ~ 4600 3550
Text Label 3750 3550 0    60   ~ 0
pack+
$Comp
L C C?
U 1 1 52FE9FCE
P 4000 4000
F 0 "C?" H 4000 4100 40  0000 L CNN
F 1 "0.47u" H 4006 3915 40  0000 L CNN
F 2 "~" H 4038 3850 30  0000 C CNN
F 3 "~" H 4000 4000 60  0000 C CNN
	1    4000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3550 4000 3800
Connection ~ 4000 3550
$Comp
L C C?
U 1 1 52FE9FCF
P 4400 4000
F 0 "C?" H 4400 4100 40  0000 L CNN
F 1 "0.47u" H 4406 3915 40  0000 L CNN
F 2 "~" H 4438 3850 30  0000 C CNN
F 3 "~" H 4400 4000 60  0000 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
Connection ~ 4400 3700
$Comp
L GND #PWR?
U 1 1 52FE9FD0
P 4000 4350
F 0 "#PWR?" H 4000 4350 30  0001 C CNN
F 1 "GND" H 4000 4280 30  0001 C CNN
F 2 "" H 4000 4350 60  0000 C CNN
F 3 "" H 4000 4350 60  0000 C CNN
	1    4000 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52FE9FD1
P 4400 4350
F 0 "#PWR?" H 4400 4350 30  0001 C CNN
F 1 "GND" H 4400 4280 30  0001 C CNN
F 2 "" H 4400 4350 60  0000 C CNN
F 3 "" H 4400 4350 60  0000 C CNN
	1    4400 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52FE9FD2
P 4700 4350
F 0 "#PWR?" H 4700 4350 30  0001 C CNN
F 1 "GND" H 4700 4280 30  0001 C CNN
F 2 "" H 4700 4350 60  0000 C CNN
F 3 "" H 4700 4350 60  0000 C CNN
	1    4700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4350 4700 3850
Wire Wire Line
	4700 3850 4750 3850
Wire Wire Line
	4400 4200 4400 4350
Wire Wire Line
	4000 4200 4000 4350
$Comp
L R R?
U 1 1 52FE9FD3
P 7100 2650
F 0 "R?" V 7180 2650 40  0000 C CNN
F 1 "10k" V 7107 2651 40  0000 C CNN
F 2 "~" V 7030 2650 30  0000 C CNN
F 3 "~" H 7100 2650 30  0000 C CNN
	1    7100 2650
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52FE9FD4
P 7100 2400
F 0 "R?" V 7180 2400 40  0000 C CNN
F 1 "1k" V 7107 2401 40  0000 C CNN
F 2 "~" V 7030 2400 30  0000 C CNN
F 3 "~" H 7100 2400 30  0000 C CNN
	1    7100 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 3100 7550 2650
Wire Wire Line
	7550 2650 7350 2650
Text Label 6750 3100 0    60   ~ 0
rat_low
Text Label 6400 2650 0    60   ~ 0
pack+
Wire Wire Line
	6400 2650 6850 2650
$Comp
L LED D?
U 1 1 52FE9FD5
P 7800 2600
F 0 "D?" H 7800 2700 50  0000 C CNN
F 1 "LED" H 7800 2500 50  0000 C CNN
F 2 "~" H 7800 2600 60  0000 C CNN
F 3 "~" H 7800 2600 60  0000 C CNN
	1    7800 2600
	0    1    1    0   
$EndComp
Connection ~ 7550 3100
Text Label 5600 2150 0    60   ~ 0
pack+
Text Label 6700 3250 0    60   ~ 0
scl
$Comp
L R R?
U 1 1 52FE9FD6
P 7200 3250
F 0 "R?" V 7280 3250 40  0000 C CNN
F 1 "10k" V 7207 3251 40  0000 C CNN
F 2 "~" V 7130 3250 30  0000 C CNN
F 3 "~" H 7200 3250 30  0000 C CNN
	1    7200 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 3250 6950 3250
$Comp
L R R?
U 1 1 52FE9FD7
P 7200 3400
F 0 "R?" V 7280 3400 40  0000 C CNN
F 1 "10k" V 7207 3401 40  0000 C CNN
F 2 "~" V 7130 3400 30  0000 C CNN
F 3 "~" H 7200 3400 30  0000 C CNN
	1    7200 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 3400 6950 3400
Text Label 6700 3400 0    60   ~ 0
sda
Wire Wire Line
	7450 3250 7600 3250
Wire Wire Line
	7600 3250 7600 3400
$Comp
L CONN_2 P?
U 1 1 52FE9FD8
P 8200 2700
F 0 "P?" V 8150 2700 40  0000 C CNN
F 1 "JP3" V 8250 2700 40  0000 C CNN
F 2 "" H 8200 2700 60  0000 C CNN
F 3 "" H 8200 2700 60  0000 C CNN
	1    8200 2700
	0    -1   -1   0   
$EndComp
Connection ~ 7600 3400
Wire Wire Line
	6850 2400 6450 2400
Wire Wire Line
	7800 3100 7800 2800
Wire Wire Line
	7800 2400 7350 2400
Wire Wire Line
	6500 3100 7800 3100
Wire Wire Line
	7450 3400 8100 3400
Wire Wire Line
	8100 3400 8100 3050
Wire Wire Line
	8300 3050 8300 3400
Wire Wire Line
	8300 3400 8600 3400
$Comp
L +3.3V #PWR?
U 1 1 52FE9FD9
P 8600 3300
F 0 "#PWR?" H 8600 3260 30  0001 C CNN
F 1 "+3.3V" H 8600 3410 30  0000 C CNN
F 2 "" H 8600 3300 60  0000 C CNN
F 3 "" H 8600 3300 60  0000 C CNN
	1    8600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3400 8600 3300
$Comp
L GND #PWR?
U 1 1 52FE9FDA
P 7000 3550
F 0 "#PWR?" H 7000 3550 30  0001 C CNN
F 1 "GND" H 7000 3480 30  0001 C CNN
F 2 "" H 7000 3550 60  0000 C CNN
F 3 "" H 7000 3550 60  0000 C CNN
	1    7000 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 3550 7000 3550
$Comp
L C C?
U 1 1 52FE9FDB
P 6850 4150
F 0 "C?" H 6850 4250 40  0000 L CNN
F 1 "0.1u" H 6856 4065 40  0000 L CNN
F 2 "~" H 6888 4000 30  0000 C CNN
F 3 "~" H 6850 4150 60  0000 C CNN
	1    6850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3700 7850 3700
Wire Wire Line
	6500 3850 6500 4650
$Comp
L C C?
U 1 1 52FE9FDC
P 7350 3900
F 0 "C?" H 7350 4000 40  0000 L CNN
F 1 "0.1u" H 7356 3815 40  0000 L CNN
F 2 "~" H 7388 3750 30  0000 C CNN
F 3 "~" H 7350 3900 60  0000 C CNN
	1    7350 3900
	1    0    0    -1  
$EndComp
Connection ~ 6850 3700
$Comp
L C C?
U 1 1 52FE9FDD
P 7350 4450
F 0 "C?" H 7350 4550 40  0000 L CNN
F 1 "0.1u" H 7356 4365 40  0000 L CNN
F 2 "~" H 7388 4300 30  0000 C CNN
F 3 "~" H 7350 4450 60  0000 C CNN
	1    7350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4650 7850 4650
Wire Wire Line
	6850 3950 6850 3700
Wire Wire Line
	6850 4350 6850 4650
Connection ~ 6850 4650
Wire Wire Line
	7350 4100 7350 4250
$Comp
L GND #PWR?
U 1 1 52FE9FDE
P 7650 4200
F 0 "#PWR?" H 7650 4200 30  0001 C CNN
F 1 "GND" H 7650 4130 30  0001 C CNN
F 2 "" H 7650 4200 60  0000 C CNN
F 3 "" H 7650 4200 60  0000 C CNN
	1    7650 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 4200 7350 4200
Connection ~ 7350 4200
$Comp
L R R?
U 1 1 52FE9FDF
P 8100 3800
F 0 "R?" V 8180 3800 40  0000 C CNN
F 1 "100" V 8107 3801 40  0000 C CNN
F 2 "~" V 8030 3800 30  0000 C CNN
F 3 "~" H 8100 3800 30  0000 C CNN
	1    8100 3800
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52FE9FE0
P 8100 4500
F 0 "R?" V 8180 4500 40  0000 C CNN
F 1 "100" V 8107 4501 40  0000 C CNN
F 2 "~" V 8030 4500 30  0000 C CNN
F 3 "~" H 8100 4500 30  0000 C CNN
	1    8100 4500
	0    -1   -1   0   
$EndComp
Connection ~ 7350 4650
Connection ~ 7350 3700
$Comp
L R R?
U 1 1 52FE9FE1
P 8550 4150
F 0 "R?" V 8630 4150 40  0000 C CNN
F 1 "0.01" V 8557 4151 40  0000 C CNN
F 2 "~" V 8480 4150 30  0000 C CNN
F 3 "~" H 8550 4150 30  0000 C CNN
	1    8550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4650 7850 4500
Wire Wire Line
	8350 4500 8550 4500
Wire Wire Line
	8550 4400 8550 4850
Wire Wire Line
	7850 3700 7850 3800
Wire Wire Line
	8350 3800 8550 3800
Wire Wire Line
	8550 3650 8550 3900
$Comp
L GND #PWR?
U 1 1 52FE9FE2
P 8550 3650
F 0 "#PWR?" H 8550 3650 30  0001 C CNN
F 1 "GND" H 8550 3580 30  0001 C CNN
F 2 "" H 8550 3650 60  0000 C CNN
F 3 "" H 8550 3650 60  0000 C CNN
	1    8550 3650
	-1   0    0    1   
$EndComp
Connection ~ 8550 3800
Text Label 8550 4850 1    60   ~ 0
pack-
Connection ~ 8550 4500
Text HLabel 6450 2400 0    60   Input ~ 0
pack+
$EndSCHEMATC
