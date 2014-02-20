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
LIBS:bluetooth
LIBS:Bluetooth-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "20 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BLUETOOTH U1
U 1 1 5302A15B
P 6600 2850
F 0 "U1" H 6600 3700 60  0000 C CNN
F 1 "BLUETOOTH" H 6600 3600 60  0000 C CNN
F 2 "~" H 6600 2850 60  0000 C CNN
F 3 "~" H 6600 2850 60  0000 C CNN
	1    6600 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 5302A2E5
P 6000 2900
F 0 "#PWR6" H 6000 2900 30  0001 C CNN
F 1 "GND" H 6000 2830 30  0001 C CNN
F 2 "" H 6000 2900 60  0000 C CNN
F 3 "" H 6000 2900 60  0000 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 5302A2F4
P 7150 2900
F 0 "#PWR10" H 7150 2900 30  0001 C CNN
F 1 "GND" H 7150 2830 30  0001 C CNN
F 2 "" H 7150 2900 60  0000 C CNN
F 3 "" H 7150 2900 60  0000 C CNN
	1    7150 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 5302A30D
P 6800 3550
F 0 "#PWR8" H 6800 3550 30  0001 C CNN
F 1 "GND" H 6800 3480 30  0001 C CNN
F 2 "" H 6800 3550 60  0000 C CNN
F 3 "" H 6800 3550 60  0000 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR5
U 1 1 5302A347
P 5900 2750
F 0 "#PWR5" H 5900 2710 30  0001 C CNN
F 1 "+3,3V" V 5850 2850 30  0000 C CNN
F 2 "" H 5900 2750 60  0000 C CNN
F 3 "" H 5900 2750 60  0000 C CNN
	1    5900 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5302A3D3
P 5150 2400
F 0 "R1" V 5230 2400 40  0000 C CNN
F 1 "NC" V 5157 2401 40  0000 C CNN
F 2 "~" V 5080 2400 30  0000 C CNN
F 3 "~" H 5150 2400 30  0000 C CNN
	1    5150 2400
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5302A3E2
P 5150 3050
F 0 "C1" H 5150 3150 40  0000 L CNN
F 1 "NC" H 5156 2965 40  0000 L CNN
F 2 "~" H 5188 2900 30  0000 C CNN
F 3 "~" H 5150 3050 60  0000 C CNN
	1    5150 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 5302A3F1
P 5150 3350
F 0 "#PWR3" H 5150 3350 30  0001 C CNN
F 1 "GND" H 5150 3280 30  0001 C CNN
F 2 "" H 5150 3350 60  0000 C CNN
F 3 "" H 5150 3350 60  0000 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR2
U 1 1 5302A400
P 5150 2100
F 0 "#PWR2" H 5150 2060 30  0001 C CNN
F 1 "+3,3V" H 5150 2210 30  0000 C CNN
F 2 "" H 5150 2100 60  0000 C CNN
F 3 "" H 5150 2100 60  0000 C CNN
	1    5150 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P1
U 1 1 5302A583
P 6000 3900
F 0 "P1" V 5950 3900 50  0000 C CNN
F 1 "SPI2" V 6050 3900 50  0000 C CNN
F 2 "" H 6000 3900 60  0000 C CNN
F 3 "" H 6000 3900 60  0000 C CNN
	1    6000 3900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR7
U 1 1 5302A64D
P 6500 4100
F 0 "#PWR7" H 6500 4100 30  0001 C CNN
F 1 "GND" H 6500 4030 30  0001 C CNN
F 2 "" H 6500 4100 60  0000 C CNN
F 3 "" H 6500 4100 60  0000 C CNN
	1    6500 4100
	0    -1   -1   0   
$EndComp
$Comp
L CONN_8 P3
U 1 1 5302A73A
P 8200 2550
F 0 "P3" V 8150 2550 60  0000 C CNN
F 1 "J3" V 8250 2550 60  0000 C CNN
F 2 "" H 8200 2550 60  0000 C CNN
F 3 "" H 8200 2550 60  0000 C CNN
	1    8200 2550
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5302AA86
P 7800 3250
F 0 "R4" V 7880 3250 40  0000 C CNN
F 1 "470" V 7807 3251 40  0000 C CNN
F 2 "~" V 7730 3250 30  0000 C CNN
F 3 "~" H 7800 3250 30  0000 C CNN
	1    7800 3250
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 5302AA95
P 8350 3250
F 0 "D1" H 8350 3350 50  0000 C CNN
F 1 "LED" H 8350 3150 50  0000 C CNN
F 2 "~" H 8350 3250 60  0000 C CNN
F 3 "~" H 8350 3250 60  0000 C CNN
	1    8350 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 5302AAFE
P 8650 3800
F 0 "#PWR11" H 8650 3800 30  0001 C CNN
F 1 "GND" H 8650 3730 30  0001 C CNN
F 2 "" H 8650 3800 60  0000 C CNN
F 3 "" H 8650 3800 60  0000 C CNN
	1    8650 3800
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5302AB70
P 8350 3550
F 0 "D2" H 8350 3650 50  0000 C CNN
F 1 "LED" H 8350 3450 50  0000 C CNN
F 2 "~" H 8350 3550 60  0000 C CNN
F 3 "~" H 8350 3550 60  0000 C CNN
	1    8350 3550
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5302AB7F
P 7800 3550
F 0 "R5" V 7880 3550 40  0000 C CNN
F 1 "470" V 7807 3551 40  0000 C CNN
F 2 "~" V 7730 3550 30  0000 C CNN
F 3 "~" H 7800 3550 30  0000 C CNN
	1    7800 3550
	0    -1   -1   0   
$EndComp
$Comp
L CONN_5 P2
U 1 1 5302AC3A
P 9400 1700
F 0 "P2" V 9350 1700 50  0000 C CNN
F 1 "SPI3" V 9450 1700 50  0000 C CNN
F 2 "" H 9400 1700 60  0000 C CNN
F 3 "" H 9400 1700 60  0000 C CNN
	1    9400 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 5302AC81
P 7700 1300
F 0 "K1" V 7650 1300 50  0000 C CNN
F 1 "RUN/AT1" V 7750 1300 40  0000 C CNN
F 2 "" H 7700 1300 60  0000 C CNN
F 3 "" H 7700 1300 60  0000 C CNN
	1    7700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2800 7150 2900
Wire Wire Line
	6800 3450 6800 3550
Wire Wire Line
	6000 2800 6000 2900
Wire Wire Line
	5900 2750 6000 2750
Wire Wire Line
	5150 3250 5150 3350
Wire Wire Line
	5150 2650 5150 2850
Wire Wire Line
	5150 2150 5150 2100
Wire Wire Line
	6400 3700 6650 3700
Wire Wire Line
	6650 3700 6650 3450
Wire Wire Line
	6400 3800 6500 3800
Wire Wire Line
	6500 3800 6500 3450
Wire Wire Line
	6400 3900 6700 3900
Wire Wire Line
	6700 3900 6700 3450
Wire Wire Line
	6400 4000 6550 4000
Wire Wire Line
	6550 4000 6550 3450
Wire Wire Line
	6400 4100 6500 4100
Wire Wire Line
	7150 2400 7550 2400
Wire Wire Line
	7550 2400 7550 2200
Wire Wire Line
	7550 2200 7850 2200
Wire Wire Line
	7150 2450 7600 2450
Wire Wire Line
	7600 2450 7600 2300
Wire Wire Line
	7600 2300 7850 2300
Wire Wire Line
	7150 2500 7650 2500
Wire Wire Line
	7650 2500 7650 2400
Wire Wire Line
	7650 2400 7850 2400
Wire Wire Line
	7150 2550 7700 2550
Wire Wire Line
	7700 2550 7700 2500
Wire Wire Line
	7700 2500 7850 2500
Wire Wire Line
	7150 2600 7850 2600
Wire Wire Line
	7150 2650 7800 2650
Wire Wire Line
	7800 2650 7800 2700
Wire Wire Line
	7800 2700 7850 2700
Wire Wire Line
	7150 2700 7750 2700
Wire Wire Line
	7750 2700 7750 2800
Wire Wire Line
	7750 2800 7850 2800
Wire Wire Line
	7150 2750 7700 2750
Wire Wire Line
	7700 2750 7700 2900
Wire Wire Line
	7700 2900 7850 2900
Wire Wire Line
	7150 2300 7450 2300
Wire Wire Line
	7450 2300 7450 3250
Wire Wire Line
	7450 3250 7550 3250
Wire Wire Line
	8050 3250 8150 3250
Wire Wire Line
	8550 3250 8650 3250
Wire Wire Line
	8650 3250 8650 3800
Wire Wire Line
	8050 3550 8150 3550
Wire Wire Line
	8550 3550 8650 3550
Connection ~ 8650 3550
Wire Wire Line
	7150 2350 7300 2350
Wire Wire Line
	7300 2350 7300 3850
Wire Wire Line
	7300 3550 7550 3550
Wire Wire Line
	7150 2250 7450 2250
Wire Wire Line
	7450 2250 7450 2000
Wire Wire Line
	7250 1300 7250 2200
Wire Wire Line
	7250 2200 7150 2200
Wire Wire Line
	6900 1300 7350 1300
$Comp
L R R2
U 1 1 5302AE08
P 6900 1550
F 0 "R2" V 6980 1550 40  0000 C CNN
F 1 "100K" V 6907 1551 40  0000 C CNN
F 2 "~" V 6830 1550 30  0000 C CNN
F 3 "~" H 6900 1550 30  0000 C CNN
	1    6900 1550
	-1   0    0    1   
$EndComp
Connection ~ 7250 1300
$Comp
L GND #PWR9
U 1 1 5302AE56
P 6900 1900
F 0 "#PWR9" H 6900 1900 30  0001 C CNN
F 1 "GND" H 6900 1830 30  0001 C CNN
F 2 "" H 6900 1900 60  0000 C CNN
F 3 "" H 6900 1900 60  0000 C CNN
	1    6900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1800 6900 1900
$Comp
L R R3
U 1 1 5302AEAA
P 6950 1200
F 0 "R3" V 7030 1200 40  0000 C CNN
F 1 "10K" V 6957 1201 40  0000 C CNN
F 2 "~" V 6880 1200 30  0000 C CNN
F 3 "~" H 6950 1200 30  0000 C CNN
	1    6950 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 1200 7350 1200
$Comp
L R R6
U 1 1 5302B0BA
P 7800 3850
F 0 "R6" V 7880 3850 40  0000 C CNN
F 1 "1k" V 7807 3851 40  0000 C CNN
F 2 "~" V 7730 3850 30  0000 C CNN
F 3 "~" H 7800 3850 30  0000 C CNN
	1    7800 3850
	0    -1   -1   0   
$EndComp
Connection ~ 7300 3550
Wire Wire Line
	6400 3550 6400 3450
Wire Wire Line
	5600 3550 6400 3550
Text Label 6150 3550 2    52   ~ 0
PIO14
$Comp
L LED D8
U 1 1 53065719
P 6100 1200
F 0 "D8" H 6100 1300 50  0000 C CNN
F 1 "LED" H 6100 1100 50  0000 C CNN
F 2 "~" H 6100 1200 60  0000 C CNN
F 3 "~" H 6100 1200 60  0000 C CNN
	1    6100 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 1200 6300 1200
$Comp
L R R11
U 1 1 530657E8
P 5600 3800
F 0 "R11" V 5680 3800 40  0000 C CNN
F 1 "1k" V 5607 3801 40  0000 C CNN
F 2 "~" V 5530 3800 30  0000 C CNN
F 3 "~" H 5600 3800 30  0000 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 5306584D
P 5600 4300
F 0 "D7" H 5600 4400 50  0000 C CNN
F 1 "LED" H 5600 4200 50  0000 C CNN
F 2 "~" H 5600 4300 60  0000 C CNN
F 3 "~" H 5600 4300 60  0000 C CNN
	1    5600 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4050 5600 4100
Connection ~ 7300 3850
Wire Wire Line
	7300 3850 7550 3850
$Comp
L LED D12
U 1 1 530659E9
P 8350 3850
F 0 "D12" H 8350 3950 50  0000 C CNN
F 1 "LED" H 8350 3750 50  0000 C CNN
F 2 "~" H 8350 3850 60  0000 C CNN
F 3 "~" H 8350 3850 60  0000 C CNN
	1    8350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3850 8150 3850
Wire Wire Line
	6400 1200 6700 1200
$Comp
L R R12
U 1 1 53065B21
P 8700 1550
F 0 "R12" V 8780 1550 40  0000 C CNN
F 1 "1k" V 8707 1551 40  0000 C CNN
F 2 "~" V 8630 1550 30  0000 C CNN
F 3 "~" H 8700 1550 30  0000 C CNN
	1    8700 1550
	0    -1   -1   0   
$EndComp
$Comp
L LED D11
U 1 1 53065BF3
P 8200 1600
F 0 "D11" H 8200 1700 50  0000 C CNN
F 1 "LED" H 8200 1500 50  0000 C CNN
F 2 "~" H 8200 1600 60  0000 C CNN
F 3 "~" H 8200 1600 60  0000 C CNN
	1    8200 1600
	-1   0    0    1   
$EndComp
$Comp
L R R13
U 1 1 53065CAD
P 8700 1700
F 0 "R13" V 8780 1700 40  0000 C CNN
F 1 "1k" V 8707 1701 40  0000 C CNN
F 2 "~" V 8630 1700 30  0000 C CNN
F 3 "~" H 8700 1700 30  0000 C CNN
	1    8700 1700
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 53065CBC
P 8700 1850
F 0 "R14" V 8780 1850 40  0000 C CNN
F 1 "1k" V 8707 1851 40  0000 C CNN
F 2 "~" V 8630 1850 30  0000 C CNN
F 3 "~" H 8700 1850 30  0000 C CNN
	1    8700 1850
	0    -1   -1   0   
$EndComp
$Comp
L LED D10
U 1 1 53065CCB
P 7900 1750
F 0 "D10" H 7900 1850 50  0000 C CNN
F 1 "LED" H 7900 1650 50  0000 C CNN
F 2 "~" H 7900 1750 60  0000 C CNN
F 3 "~" H 7900 1750 60  0000 C CNN
	1    7900 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 1600 8400 1600
Wire Wire Line
	8100 1750 8300 1750
Wire Wire Line
	8300 1750 8300 1700
Wire Wire Line
	8300 1700 8450 1700
$Comp
L LED D9
U 1 1 53065E1D
P 7550 1850
F 0 "D9" H 7550 1950 50  0000 C CNN
F 1 "LED" H 7550 1750 50  0000 C CNN
F 2 "~" H 7550 1850 60  0000 C CNN
F 3 "~" H 7550 1850 60  0000 C CNN
	1    7550 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 1900 7750 1850
Wire Wire Line
	7450 2000 9000 2000
Wire Wire Line
	9000 2000 9000 1900
Wire Wire Line
	9000 1800 8950 1800
Wire Wire Line
	8950 1800 8950 1850
Wire Wire Line
	7750 1900 8450 1900
Wire Wire Line
	8450 1900 8450 1850
Wire Wire Line
	8450 1600 8450 1550
Wire Wire Line
	8950 1550 9000 1550
Wire Wire Line
	9000 1550 9000 1600
Wire Wire Line
	9000 1500 9000 1400
Wire Wire Line
	9000 1400 7900 1400
Wire Wire Line
	7900 1400 7900 1550
Wire Wire Line
	7900 1550 7250 1550
Connection ~ 7250 1550
Wire Wire Line
	8550 3850 8550 3700
Wire Wire Line
	8550 3700 8650 3700
Connection ~ 8650 3700
Wire Wire Line
	8000 1600 7300 1600
Wire Wire Line
	7300 1600 7300 1850
Wire Wire Line
	7050 1700 7700 1700
Wire Wire Line
	7700 1700 7700 1750
Wire Wire Line
	7300 1850 7350 1850
Connection ~ 7300 1700
Wire Wire Line
	7050 1700 7050 1850
Wire Wire Line
	7050 1850 6900 1850
Connection ~ 6900 1850
$Comp
L GND #PWR4
U 1 1 53066987
P 5600 4600
F 0 "#PWR4" H 5600 4600 30  0001 C CNN
F 1 "GND" H 5600 4530 30  0001 C CNN
F 2 "" H 5600 4600 60  0000 C CNN
F 3 "" H 5600 4600 60  0000 C CNN
	1    5600 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4500 5600 4600
$Comp
L R R7
U 1 1 53066A07
P 4800 1450
F 0 "R7" V 4880 1450 40  0000 C CNN
F 1 "1k" V 4807 1451 40  0000 C CNN
F 2 "~" V 4730 1450 30  0000 C CNN
F 3 "~" H 4800 1450 30  0000 C CNN
	1    4800 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 2200 6000 1450
Wire Wire Line
	6000 1450 5050 1450
$Comp
L R R8
U 1 1 53066A99
P 4800 1600
F 0 "R8" V 4880 1600 40  0000 C CNN
F 1 "1k" V 4807 1601 40  0000 C CNN
F 2 "~" V 4730 1600 30  0000 C CNN
F 3 "~" H 4800 1600 30  0000 C CNN
	1    4800 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 1600 5900 1600
Wire Wire Line
	5900 1600 5900 2250
Wire Wire Line
	5900 2250 6000 2250
$Comp
L R R9
U 1 1 53066B29
P 4800 1750
F 0 "R9" V 4880 1750 40  0000 C CNN
F 1 "1k" V 4807 1751 40  0000 C CNN
F 2 "~" V 4730 1750 30  0000 C CNN
F 3 "~" H 4800 1750 30  0000 C CNN
	1    4800 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 2700 5400 2700
Wire Wire Line
	5400 2700 5400 2750
Wire Wire Line
	5400 2750 5150 2750
Connection ~ 5150 2750
Wire Wire Line
	6000 2600 5800 2600
Wire Wire Line
	5800 2600 5800 1750
Wire Wire Line
	5800 1750 5050 1750
$Comp
L R R10
U 1 1 53066C92
P 4800 1900
F 0 "R10" V 4880 1900 40  0000 C CNN
F 1 "1k" V 4807 1901 40  0000 C CNN
F 2 "~" V 4730 1900 30  0000 C CNN
F 3 "~" H 4800 1900 30  0000 C CNN
	1    4800 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 1900 5700 1900
Wire Wire Line
	5700 1900 5700 2650
Wire Wire Line
	5700 2650 6000 2650
$Comp
L LED D6
U 1 1 53066D12
P 4300 1450
F 0 "D6" H 4300 1550 50  0000 C CNN
F 1 "LED" H 4300 1350 50  0000 C CNN
F 2 "~" H 4300 1450 60  0000 C CNN
F 3 "~" H 4300 1450 60  0000 C CNN
	1    4300 1450
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 53066D21
P 4100 1650
F 0 "D3" H 4100 1750 50  0000 C CNN
F 1 "LED" H 4100 1550 50  0000 C CNN
F 2 "~" H 4100 1650 60  0000 C CNN
F 3 "~" H 4100 1650 60  0000 C CNN
	1    4100 1650
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 53066D30
P 4250 1850
F 0 "D4" H 4250 1950 50  0000 C CNN
F 1 "LED" H 4250 1750 50  0000 C CNN
F 2 "~" H 4250 1850 60  0000 C CNN
F 3 "~" H 4250 1850 60  0000 C CNN
	1    4250 1850
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 53066D49
P 4250 2150
F 0 "D5" H 4250 2250 50  0000 C CNN
F 1 "LED" H 4250 2050 50  0000 C CNN
F 2 "~" H 4250 2150 60  0000 C CNN
F 3 "~" H 4250 2150 60  0000 C CNN
	1    4250 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 1450 4500 1450
Wire Wire Line
	4550 1600 4300 1600
Wire Wire Line
	4300 1600 4300 1650
Wire Wire Line
	4550 1750 4550 1850
Wire Wire Line
	4550 1850 4450 1850
Wire Wire Line
	4550 1900 4550 2150
Wire Wire Line
	4550 2150 4450 2150
$Comp
L GND #PWR1
U 1 1 53066F37
P 3900 2400
F 0 "#PWR1" H 3900 2400 30  0001 C CNN
F 1 "GND" H 3900 2330 30  0001 C CNN
F 2 "" H 3900 2400 60  0000 C CNN
F 3 "" H 3900 2400 60  0000 C CNN
	1    3900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1650 3900 2400
Wire Wire Line
	4050 1850 4050 2150
Wire Wire Line
	3850 1950 4050 1950
Connection ~ 3900 1950
Connection ~ 4050 1950
Wire Wire Line
	4100 1450 3850 1450
Wire Wire Line
	3850 1450 3850 1950
$EndSCHEMATC
