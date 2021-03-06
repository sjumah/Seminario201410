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
LIBS:cohete-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "24 jul 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1950 2800 0    60   ~ 0
RST
$Comp
L GND #PWR01
U 1 1 507DA0D5
P 2850 6500
F 0 "#PWR01" H 2850 6500 30  0001 C CNN
F 1 "GND" H 2850 6430 30  0001 C CNN
F 2 "" H 2850 6500 60  0001 C CNN
F 3 "" H 2850 6500 60  0001 C CNN
	1    2850 6500
	1    0    0    -1  
$EndComp
Text Label 2850 6400 0    60   ~ 0
RST
$Comp
L VCC #PWR02
U 1 1 507DA089
P 2850 6100
F 0 "#PWR02" H 2850 6200 30  0001 C CNN
F 1 "VCC" H 2850 6200 30  0000 C CNN
F 2 "" H 2850 6100 60  0001 C CNN
F 3 "" H 2850 6100 60  0001 C CNN
	1    2850 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 507A4166
P 5550 3900
F 0 "#PWR03" H 5550 3900 30  0001 C CNN
F 1 "GND" H 5550 3830 30  0001 C CNN
F 2 "" H 5550 3900 60  0001 C CNN
F 3 "" H 5550 3900 60  0001 C CNN
	1    5550 3900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 507A415F
P 5150 3750
F 0 "R5" V 5230 3750 50  0000 C CNN
F 1 "1K" V 5150 3750 50  0000 C CNN
F 2 "" H 5150 3750 60  0001 C CNN
F 3 "" H 5150 3750 60  0001 C CNN
	1    5150 3750
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 507A4156
P 5150 3650
F 0 "R4" V 5230 3650 50  0000 C CNN
F 1 "1K" V 5150 3650 50  0000 C CNN
F 2 "" H 5150 3650 60  0001 C CNN
F 3 "" H 5150 3650 60  0001 C CNN
	1    5150 3650
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 507A4138
P 4600 3650
F 0 "D3" H 4600 3750 50  0000 C CNN
F 1 "LED" H 4600 3550 50  0000 C CNN
F 2 "" H 4600 3650 60  0001 C CNN
F 3 "" H 4600 3650 60  0001 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 507A4133
P 4600 3750
F 0 "D4" H 4600 3850 50  0000 C CNN
F 1 "LED" H 4600 3650 50  0000 C CNN
F 2 "" H 4600 3750 60  0001 C CNN
F 3 "" H 4600 3750 60  0001 C CNN
	1    4600 3750
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 507A40DA
P 1700 3800
F 0 "C2" H 1750 3900 50  0000 L CNN
F 1 "22pF" H 1750 3700 50  0000 L CNN
F 2 "" H 1700 3800 60  0001 C CNN
F 3 "" H 1700 3800 60  0001 C CNN
	1    1700 3800
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 507A40D6
P 1700 3200
F 0 "C1" H 1750 3300 50  0000 L CNN
F 1 "22pF" H 1750 3100 50  0000 L CNN
F 2 "" H 1700 3200 60  0001 C CNN
F 3 "" H 1700 3200 60  0001 C CNN
	1    1700 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 507A40D1
P 1300 3550
F 0 "#PWR04" H 1300 3550 30  0001 C CNN
F 1 "GND" H 1300 3480 30  0001 C CNN
F 2 "" H 1300 3550 60  0001 C CNN
F 3 "" H 1300 3550 60  0001 C CNN
	1    1300 3550
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 507A40CB
P 2050 3500
F 0 "X1" H 2050 3650 60  0000 C CNN
F 1 "32Mhz" H 2050 3350 60  0000 C CNN
F 2 "" H 2050 3500 60  0001 C CNN
F 3 "" H 2050 3500 60  0001 C CNN
	1    2050 3500
	0    1    1    0   
$EndComp
Text Label 4400 4200 0    60   ~ 0
SCL
Text Label 4400 4100 0    60   ~ 0
SDA
Text Label 4400 4300 0    60   ~ 0
RX0
Text Label 4400 4400 0    60   ~ 0
TX0
$Comp
L GND #PWR05
U 1 1 507A407D
P 3350 5200
F 0 "#PWR05" H 3350 5200 30  0001 C CNN
F 1 "GND" H 3350 5130 30  0001 C CNN
F 2 "" H 3350 5200 60  0001 C CNN
F 3 "" H 3350 5200 60  0001 C CNN
	1    3350 5200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 507A4069
P 2100 2250
F 0 "#PWR06" H 2100 2350 30  0001 C CNN
F 1 "VCC" H 2100 2350 30  0000 C CNN
F 2 "" H 2100 2250 60  0001 C CNN
F 3 "" H 2100 2250 60  0001 C CNN
	1    2100 2250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 507A4063
P 2100 2550
F 0 "R1" V 2180 2550 50  0000 C CNN
F 1 "4.7K" V 2100 2550 50  0000 C CNN
F 2 "" H 2100 2550 60  0001 C CNN
F 3 "" H 2100 2550 60  0001 C CNN
	1    2100 2550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 507A404A
P 3250 2400
F 0 "#PWR07" H 3250 2500 30  0001 C CNN
F 1 "VCC" H 3250 2500 30  0000 C CNN
F 2 "" H 3250 2400 60  0001 C CNN
F 3 "" H 3250 2400 60  0001 C CNN
	1    3250 2400
	1    0    0    -1  
$EndComp
Text Notes 7350 7550 0    60   ~ 0
Version ligera - PUA201220
$Comp
L ATXMEGA32A4U-A IC1
U 1 1 53893801
P 3350 3800
F 0 "IC1" H 2650 4950 50  0000 L BNN
F 1 "ATXMEGA32A4U-A" H 3600 2600 50  0000 L BNN
F 2 "TQFP44" H 2800 2650 50  0001 C CNN
F 3 "" H 3350 3800 60  0000 C CNN
	1    3350 3800
	1    0    0    -1  
$EndComp
$Comp
L XBEE-PRO M1
U 1 1 53893AFB
P 8550 3000
F 0 "M1" H 7750 4300 50  0000 L BNN
F 1 "XBEE-PRO" H 7750 1600 50  0000 L BNN
F 2 "xbee_r1-XBEE-PRO" H 8550 3150 50  0001 C CNN
F 3 "" H 8550 3000 60  0000 C CNN
	1    8550 3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 53893B14
P 7500 2350
F 0 "#PWR08" H 7500 2450 30  0001 C CNN
F 1 "VCC" H 7500 2450 30  0000 C CNN
F 2 "" H 7500 2350 60  0000 C CNN
F 3 "" H 7500 2350 60  0000 C CNN
	1    7500 2350
	1    0    0    -1  
$EndComp
Text Label 7550 2600 2    60   ~ 0
RX0
Text Label 7550 2800 2    60   ~ 0
TX0
$Comp
L R R2
U 1 1 53893B77
P 7350 2950
F 0 "R2" V 7430 2950 40  0000 C CNN
F 1 "4.7K" V 7357 2951 40  0000 C CNN
F 2 "~" V 7280 2950 30  0000 C CNN
F 3 "~" H 7350 2950 30  0000 C CNN
	1    7350 2950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 53893C0F
P 7550 4250
F 0 "#PWR09" H 7550 4250 30  0001 C CNN
F 1 "GND" H 7550 4180 30  0001 C CNN
F 2 "" H 7550 4250 60  0000 C CNN
F 3 "" H 7550 4250 60  0000 C CNN
	1    7550 4250
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 53893C64
P 10350 3900
F 0 "D1" H 10350 4000 50  0000 C CNN
F 1 "LED" H 10350 3800 50  0000 C CNN
F 2 "" H 10350 3900 60  0001 C CNN
F 3 "" H 10350 3900 60  0001 C CNN
	1    10350 3900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 53893C72
P 10350 4150
F 0 "#PWR010" H 10350 4150 30  0001 C CNN
F 1 "GND" H 10350 4080 30  0001 C CNN
F 2 "" H 10350 4150 60  0000 C CNN
F 3 "" H 10350 4150 60  0000 C CNN
	1    10350 4150
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 53893C7B
P 10000 3700
F 0 "R7" V 10080 3700 40  0000 C CNN
F 1 "1K" V 10007 3701 40  0000 C CNN
F 2 "~" V 9930 3700 30  0000 C CNN
F 3 "~" H 10000 3700 30  0000 C CNN
	1    10000 3700
	0    -1   -1   0   
$EndComp
Text Label 9650 3900 0    60   ~ 0
CTS
Text Label 9650 3100 0    60   ~ 0
RTS
$Comp
L VCC #PWR011
U 1 1 53893D1E
P 9750 3500
F 0 "#PWR011" H 9750 3600 30  0001 C CNN
F 1 "VCC" H 9750 3600 30  0000 C CNN
F 2 "" H 9750 3500 60  0000 C CNN
F 3 "" H 9750 3500 60  0000 C CNN
	1    9750 3500
	1    0    0    -1  
$EndComp
Text Label 4400 4700 0    60   ~ 0
RX1
Text Label 4400 4800 0    60   ~ 0
TX1
$Comp
L CONN_4 Bth1
U 1 1 5389CE64
P 4900 6350
F 0 "Bth1" V 4850 6350 50  0000 C CNN
F 1 "CONN_4" V 4950 6350 50  0000 C CNN
F 2 "" H 4900 6350 60  0000 C CNN
F 3 "" H 4900 6350 60  0000 C CNN
	1    4900 6350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 5389CE73
P 4500 6200
F 0 "#PWR012" H 4500 6300 30  0001 C CNN
F 1 "VCC" H 4500 6300 30  0000 C CNN
F 2 "" H 4500 6200 60  0000 C CNN
F 3 "" H 4500 6200 60  0000 C CNN
	1    4500 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5389CE8C
P 4300 6300
F 0 "#PWR013" H 4300 6300 30  0001 C CNN
F 1 "GND" H 4300 6230 30  0001 C CNN
F 2 "" H 4300 6300 60  0000 C CNN
F 3 "" H 4300 6300 60  0000 C CNN
	1    4300 6300
	1    0    0    -1  
$EndComp
Text Label 4550 6500 2    60   ~ 0
TX1
Text Label 4550 6400 2    60   ~ 0
RX1
$Comp
L V_REG_LM1117SOT223 U1
U 1 1 5389D5A6
P 2550 1150
F 0 "U1" H 2500 1300 50  0000 L BNN
F 1 "LM1117" H 2650 850 50  0000 L BNN
F 2 "SparkFun-SOT223" H 2550 1450 50  0001 C CNN
F 3 "" H 2550 1150 60  0000 C CNN
	1    2550 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 5389D5C2
P 1200 1250
F 0 "P1" V 1150 1250 40  0000 C CNN
F 1 "CONN_2" V 1250 1250 40  0000 C CNN
F 2 "" H 1200 1250 60  0000 C CNN
F 3 "" H 1200 1250 60  0000 C CNN
	1    1200 1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR014
U 1 1 5389D690
P 2550 1600
F 0 "#PWR014" H 2550 1600 30  0001 C CNN
F 1 "GND" H 2550 1530 30  0001 C CNN
F 2 "" H 2550 1600 60  0000 C CNN
F 3 "" H 2550 1600 60  0000 C CNN
	1    2550 1600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 5389D72D
P 2950 1150
F 0 "#PWR015" H 2950 1250 30  0001 C CNN
F 1 "VCC" H 2950 1250 30  0000 C CNN
F 2 "" H 2950 1150 60  0000 C CNN
F 3 "" H 2950 1150 60  0000 C CNN
	1    2950 1150
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5389D864
P 1850 1350
F 0 "C3" H 1850 1450 40  0000 L CNN
F 1 "10uF" H 1856 1265 40  0000 L CNN
F 2 "~" H 1888 1200 30  0000 C CNN
F 3 "~" H 1850 1350 60  0000 C CNN
	1    1850 1350
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5389D873
P 3100 1350
F 0 "C4" H 3100 1450 40  0000 L CNN
F 1 "22uF" H 3106 1265 40  0000 L CNN
F 2 "~" H 3138 1200 30  0000 C CNN
F 3 "~" H 3100 1350 60  0000 C CNN
	1    3100 1350
	1    0    0    -1  
$EndComp
Text Label 4350 2900 0    60   ~ 0
IN_PRESION
$Comp
L LM317 U2
U 1 1 5389E4CC
P 4450 1250
F 0 "U2" H 4450 1550 60  0000 C CNN
F 1 "L78S05" H 4500 1000 60  0000 L CNN
F 2 "~" H 4450 1250 60  0000 C CNN
F 3 "~" H 4450 1250 60  0000 C CNN
	1    4450 1250
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5389E4DB
P 3900 1300
F 0 "C5" H 3900 1400 40  0000 L CNN
F 1 "0.33uF" H 3906 1215 40  0000 L CNN
F 2 "~" H 3938 1150 30  0000 C CNN
F 3 "~" H 3900 1300 60  0000 C CNN
	1    3900 1300
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5389E4EA
P 5150 1300
F 0 "C6" H 5150 1400 40  0000 L CNN
F 1 "0.1uF" H 5156 1215 40  0000 L CNN
F 2 "~" H 5188 1150 30  0000 C CNN
F 3 "~" H 5150 1300 60  0000 C CNN
	1    5150 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5389E9D6
P 4450 1700
F 0 "#PWR016" H 4450 1700 30  0001 C CNN
F 1 "GND" H 4450 1630 30  0001 C CNN
F 2 "" H 4450 1700 60  0000 C CNN
F 3 "" H 4450 1700 60  0000 C CNN
	1    4450 1700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 5389EB61
P 5150 1100
F 0 "#PWR017" H 5150 1190 20  0001 C CNN
F 1 "+5V" H 5150 1190 30  0000 C CNN
F 2 "" H 5150 1100 60  0000 C CNN
F 3 "" H 5150 1100 60  0000 C CNN
	1    5150 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P5
U 1 1 538A1558
P 9650 5750
F 0 "P5" V 9600 5750 60  0000 C CNN
F 1 "CONN_8" V 9700 5750 60  0000 C CNN
F 2 "" H 9650 5750 60  0000 C CNN
F 3 "" H 9650 5750 60  0000 C CNN
	1    9650 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 538A1576
P 8600 5700
F 0 "#PWR018" H 8600 5700 30  0001 C CNN
F 1 "GND" H 8600 5630 30  0001 C CNN
F 2 "" H 8600 5700 60  0000 C CNN
F 3 "" H 8600 5700 60  0000 C CNN
	1    8600 5700
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 538A15D8
P 8900 5500
F 0 "C8" H 8900 5600 40  0000 L CNN
F 1 "1u" H 8906 5415 40  0000 L CNN
F 2 "~" H 8938 5350 30  0000 C CNN
F 3 "~" H 8900 5500 60  0000 C CNN
	1    8900 5500
	0    -1   -1   0   
$EndComp
$Comp
L C C7
U 1 1 538A1605
P 8750 5950
F 0 "C7" H 8750 6050 40  0000 L CNN
F 1 "220pF" H 8756 5865 40  0000 L CNN
F 2 "~" H 8788 5800 30  0000 C CNN
F 3 "~" H 8750 5950 60  0000 C CNN
	1    8750 5950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 538A1989
P 9100 5300
F 0 "#PWR019" H 9100 5390 20  0001 C CNN
F 1 "+5V" H 9100 5390 30  0000 C CNN
F 2 "" H 9100 5300 60  0000 C CNN
F 3 "" H 9100 5300 60  0000 C CNN
	1    9100 5300
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 538A86B4
P 8350 6150
F 0 "R6" V 8430 6150 40  0000 C CNN
F 1 "1,5k" V 8357 6151 40  0000 C CNN
F 2 "~" V 8280 6150 30  0000 C CNN
F 3 "~" H 8350 6150 30  0000 C CNN
	1    8350 6150
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 538A86C3
P 8000 6400
F 0 "R3" V 8080 6400 40  0000 C CNN
F 1 "2,2k" V 8007 6401 40  0000 C CNN
F 2 "~" V 7930 6400 30  0000 C CNN
F 3 "~" H 8000 6400 30  0000 C CNN
	1    8000 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 538A86D2
P 8000 6700
F 0 "#PWR020" H 8000 6700 30  0001 C CNN
F 1 "GND" H 8000 6630 30  0001 C CNN
F 2 "" H 8000 6700 60  0000 C CNN
F 3 "" H 8000 6700 60  0000 C CNN
	1    8000 6700
	1    0    0    -1  
$EndComp
Text Label 8000 6150 2    60   ~ 0
IN_PRESION
$Comp
L GND #PWR021
U 1 1 538A87B9
P 1250 6450
F 0 "#PWR021" H 1250 6450 30  0001 C CNN
F 1 "GND" H 1250 6380 30  0001 C CNN
F 2 "" H 1250 6450 60  0000 C CNN
F 3 "" H 1250 6450 60  0000 C CNN
	1    1250 6450
	1    0    0    -1  
$EndComp
Text Label 1250 6250 0    60   ~ 0
IGN_0
Text Label 1250 6150 0    60   ~ 0
IGN_1
Wire Wire Line
	1250 6450 1250 6350
Wire Wire Line
	8000 6150 8100 6150
Wire Wire Line
	8000 6700 8000 6650
Connection ~ 3650 2500
Wire Wire Line
	4250 2500 4250 2800
Wire Wire Line
	3250 2500 4250 2500
Connection ~ 8750 6150
Wire Wire Line
	9100 5500 9100 5300
Wire Wire Line
	8700 5500 8600 5500
Connection ~ 8600 5600
Connection ~ 9100 5500
Wire Wire Line
	9300 5500 9100 5500
Connection ~ 8750 5600
Wire Wire Line
	8750 5750 8750 5600
Wire Wire Line
	8600 6150 9200 6150
Wire Wire Line
	9200 6150 9200 5700
Wire Wire Line
	9200 5700 9300 5700
Wire Wire Line
	8600 5600 9300 5600
Wire Wire Line
	8600 5500 8600 5700
Wire Wire Line
	3900 800  3900 1100
Wire Wire Line
	1550 800  3900 800 
Wire Wire Line
	1550 1150 1550 800 
Wire Wire Line
	3900 1100 4050 1100
Wire Wire Line
	4850 1100 5150 1100
Connection ~ 4450 1600
Wire Wire Line
	5150 1600 5150 1500
Wire Wire Line
	3900 1600 5150 1600
Wire Wire Line
	3900 1500 3900 1600
Wire Wire Line
	4450 1700 4450 1600
Wire Wire Line
	4250 2900 4250 3000
Wire Wire Line
	4250 2900 4350 2900
Connection ~ 2950 1150
Connection ~ 1850 1550
Connection ~ 1850 1150
Connection ~ 2550 1550
Wire Wire Line
	1550 1550 3100 1550
Wire Wire Line
	2850 1150 3100 1150
Wire Wire Line
	2550 1450 2550 1600
Wire Wire Line
	1550 1150 2250 1150
Wire Wire Line
	2850 1250 2850 1150
Wire Wire Line
	1550 1350 1550 1550
Wire Wire Line
	2350 3500 2450 3500
Wire Wire Line
	2350 3400 2450 3400
Wire Wire Line
	4550 6200 4500 6200
Wire Wire Line
	4550 6300 4300 6300
Wire Wire Line
	4400 4800 4250 4800
Wire Wire Line
	4400 4700 4250 4700
Wire Wire Line
	9750 3500 9650 3500
Wire Wire Line
	10350 3700 10250 3700
Wire Wire Line
	9650 3700 9750 3700
Wire Wire Line
	10350 4150 10350 4100
Wire Wire Line
	7550 4250 7550 4200
Connection ~ 7500 2400
Wire Wire Line
	7350 2700 7350 2400
Wire Wire Line
	7350 3200 7550 3200
Wire Wire Line
	7350 2400 7550 2400
Wire Wire Line
	7500 2350 7500 2400
Connection ~ 3450 2500
Connection ~ 3350 2500
Connection ~ 3350 5100
Wire Wire Line
	3350 5100 3350 5200
Connection ~ 3300 5100
Connection ~ 3400 5100
Wire Wire Line
	3200 5100 3500 5100
Wire Wire Line
	2350 4600 2450 4600
Wire Wire Line
	2350 4700 2450 4700
Wire Wire Line
	2850 6400 2950 6400
Wire Wire Line
	2850 6200 2950 6200
Wire Wire Line
	3250 2500 3250 2400
Wire Wire Line
	5550 3650 5400 3650
Wire Wire Line
	5550 3650 5550 3900
Wire Wire Line
	4400 3650 4250 3650
Wire Wire Line
	4900 3750 4800 3750
Connection ~ 5550 3650
Wire Wire Line
	2350 3200 2350 3400
Wire Wire Line
	1300 3200 1500 3200
Wire Wire Line
	1300 3550 1300 3200
Wire Wire Line
	4400 4100 4250 4100
Wire Wire Line
	4400 4400 4250 4400
Wire Wire Line
	2100 2250 2100 2300
Wire Wire Line
	4400 4300 4250 4300
Wire Wire Line
	4400 4200 4250 4200
Wire Wire Line
	1500 3200 1500 3800
Wire Wire Line
	1900 3800 2350 3800
Connection ~ 2050 3800
Wire Wire Line
	1900 3200 2350 3200
Connection ~ 2050 3200
Wire Wire Line
	5400 3750 5550 3750
Connection ~ 5550 3750
Wire Wire Line
	4800 3650 4900 3650
Wire Wire Line
	4400 3750 4250 3750
Wire Wire Line
	2350 3800 2350 3500
Wire Wire Line
	2850 6300 2950 6300
Wire Wire Line
	2850 6500 2950 6500
Wire Wire Line
	2350 4800 2450 4800
Wire Wire Line
	1950 2800 2450 2800
Connection ~ 2100 2800
Text Label 2450 4100 2    60   ~ 0
IGN_0
Text Label 2450 4200 2    60   ~ 0
IGN_1
Text Label 2450 4300 2    60   ~ 0
IGN_2
$Comp
L C C9
U 1 1 538A8FB5
P 9000 5950
F 0 "C9" H 9000 6050 40  0000 L CNN
F 1 "220pF" H 9006 5865 40  0000 L CNN
F 2 "~" H 9038 5800 30  0000 C CNN
F 3 "~" H 9000 5950 60  0000 C CNN
	1    9000 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5750 9000 5600
Connection ~ 9000 5600
Text Label 1250 6050 0    60   ~ 0
IGN_2
Wire Notes Line
	10200 4950 7350 4950
Wire Notes Line
	7350 4950 7350 6900
Wire Notes Line
	7350 6900 10200 6900
Wire Notes Line
	10200 6900 10200 4950
Text Notes 9350 6750 0    60   ~ 0
Sensor Presión\nMPXV5004DP
Wire Notes Line
	4200 5950 4200 6900
Wire Notes Line
	4200 6900 5300 6900
Wire Notes Line
	5300 6900 5300 5950
Wire Notes Line
	5300 5950 4200 5950
Wire Notes Line
	3600 5800 2450 5800
Wire Notes Line
	2450 5800 2450 6900
Wire Notes Line
	2450 6900 3600 6900
Wire Notes Line
	3600 6900 3600 5800
Text Notes 850  6900 0    60   ~ 0
Señales ignitores
Text Notes 2900 6750 0    60   ~ 0
Programación \nSPI
Text Notes 4800 6850 0    60   ~ 0
Bluetooth
$Comp
L CONN_4 P4
U 1 1 538AA31C
P 6500 6250
F 0 "P4" V 6450 6250 50  0000 C CNN
F 1 "CONN_4" V 6550 6250 50  0000 C CNN
F 2 "" H 6500 6250 60  0000 C CNN
F 3 "" H 6500 6250 60  0000 C CNN
	1    6500 6250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR022
U 1 1 538AA32B
P 6100 6050
F 0 "#PWR022" H 6100 6150 30  0001 C CNN
F 1 "VCC" H 6100 6150 30  0000 C CNN
F 2 "" H 6100 6050 60  0000 C CNN
F 3 "" H 6100 6050 60  0000 C CNN
	1    6100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6050 6100 6100
Wire Wire Line
	6100 6100 6150 6100
$Comp
L GND #PWR023
U 1 1 538AA3B0
P 6100 6200
F 0 "#PWR023" H 6100 6200 30  0001 C CNN
F 1 "GND" H 6100 6130 30  0001 C CNN
F 2 "" H 6100 6200 60  0000 C CNN
F 3 "" H 6100 6200 60  0000 C CNN
	1    6100 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6200 6150 6200
Text Label 6150 6300 2    60   ~ 0
SCL
Text Label 6150 6400 2    60   ~ 0
SDA
Wire Notes Line
	5750 5750 6750 5750
Wire Notes Line
	6750 5750 6750 6900
Wire Notes Line
	6750 6900 5750 6900
Wire Notes Line
	5750 6900 5750 5750
Text Notes 6200 6700 0    60   ~ 0
IMU\nMPU6050
Connection ~ 9000 6150
$Comp
L R R8
U 1 1 538E2EFB
P 1450 6500
F 0 "R8" V 1530 6500 40  0000 C CNN
F 1 "10K" V 1457 6501 40  0000 C CNN
F 2 "~" V 1380 6500 30  0000 C CNN
F 3 "~" H 1450 6500 30  0000 C CNN
	1    1450 6500
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 538E2F0A
P 1600 6400
F 0 "R9" V 1680 6400 40  0000 C CNN
F 1 "10K" V 1607 6401 40  0000 C CNN
F 2 "~" V 1530 6400 30  0000 C CNN
F 3 "~" H 1600 6400 30  0000 C CNN
	1    1600 6400
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 538E2F19
P 1750 6300
F 0 "R10" V 1830 6300 40  0000 C CNN
F 1 "10K" V 1757 6301 40  0000 C CNN
F 2 "~" V 1680 6300 30  0000 C CNN
F 3 "~" H 1750 6300 30  0000 C CNN
	1    1750 6300
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 538E2F30
P 900 6100
F 0 "P2" V 850 6100 60  0000 C CNN
F 1 "CONN_6" V 950 6100 60  0000 C CNN
F 2 "" H 900 6100 60  0000 C CNN
F 3 "" H 900 6100 60  0000 C CNN
	1    900  6100
	-1   0    0    1   
$EndComp
Text Label 1250 5950 0    60   ~ 0
IGN_3
Text Label 1250 5850 0    60   ~ 0
EN_IGN
$Comp
L R R11
U 1 1 538E2F59
P 1900 6200
F 0 "R11" V 1980 6200 40  0000 C CNN
F 1 "10K" V 1907 6201 40  0000 C CNN
F 2 "~" V 1830 6200 30  0000 C CNN
F 3 "~" H 1900 6200 30  0000 C CNN
	1    1900 6200
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 538E2F68
P 2050 6100
F 0 "R12" V 2130 6100 40  0000 C CNN
F 1 "10K" V 2057 6101 40  0000 C CNN
F 2 "~" V 1980 6100 30  0000 C CNN
F 3 "~" H 2050 6100 30  0000 C CNN
	1    2050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5850 1250 5850
Wire Wire Line
	1250 5950 1900 5950
Wire Wire Line
	1750 6050 1250 6050
Wire Wire Line
	1250 6150 1600 6150
Wire Wire Line
	1450 6250 1250 6250
Wire Wire Line
	1450 6750 2050 6750
Wire Wire Line
	2050 6350 2050 6800
Wire Wire Line
	1600 6650 1600 6750
Connection ~ 1600 6750
Wire Wire Line
	1750 6550 1750 6750
Connection ~ 1750 6750
Wire Wire Line
	1900 6450 1900 6750
Connection ~ 1900 6750
$Comp
L GND #PWR024
U 1 1 538E340C
P 2050 6800
F 0 "#PWR024" H 2050 6800 30  0001 C CNN
F 1 "GND" H 2050 6730 30  0001 C CNN
F 2 "" H 2050 6800 60  0000 C CNN
F 3 "" H 2050 6800 60  0000 C CNN
	1    2050 6800
	1    0    0    -1  
$EndComp
Connection ~ 2050 6750
Wire Notes Line
	2200 5750 2200 6950
Wire Notes Line
	2200 6950 750  6950
Wire Notes Line
	750  6950 750  5750
Wire Notes Line
	750  5750 2200 5750
Text Label 2450 4400 2    60   ~ 0
IGN_3
Text Label 2450 4500 2    60   ~ 0
EN_IGN
$Comp
L CONN_4 P3
U 1 1 53CD76CF
P 3300 6350
F 0 "P3" V 3250 6350 50  0000 C CNN
F 1 "CONN_4" V 3350 6350 50  0000 C CNN
F 2 "" H 3300 6350 60  0000 C CNN
F 3 "" H 3300 6350 60  0000 C CNN
	1    3300 6350
	1    0    0    -1  
$EndComp
Text Label 2850 6300 0    60   ~ 0
PDI
Wire Wire Line
	2850 6100 2850 6200
Wire Wire Line
	2450 2900 2350 2900
Text Label 2350 2900 0    60   ~ 0
PDI
$EndSCHEMATC
