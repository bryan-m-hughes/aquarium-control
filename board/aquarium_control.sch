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
LIBS:nebrius-lcd
LIBS:nebrius-regulators
LIBS:nebrius-switch
LIBS:aquarium_control-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Barrel_Jack J1
U 1 1 59C89069
P 1500 2550
F 0 "J1" H 1500 2760 50  0000 C CNN
F 1 "Barrel_Jack" H 1500 2375 50  0000 C CNN
F 2 "" H 1550 2510 50  0001 C CNN
F 3 "" H 1550 2510 50  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4250 2400 4250
$Comp
L GND #PWR?
U 1 1 59C8947A
P 1900 2750
F 0 "#PWR?" H 1900 2500 50  0001 C CNN
F 1 "GND" H 1900 2600 50  0000 C CNN
F 2 "" H 1900 2750 50  0001 C CNN
F 3 "" H 1900 2750 50  0001 C CNN
	1    1900 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59C89522
P 2900 4850
F 0 "#PWR?" H 2900 4600 50  0001 C CNN
F 1 "GND" H 2900 4700 50  0000 C CNN
F 2 "" H 2900 4850 50  0001 C CNN
F 3 "" H 2900 4850 50  0001 C CNN
	1    2900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4650 2900 4850
Wire Wire Line
	2800 4650 2800 4750
Wire Wire Line
	2800 4750 2900 4750
Connection ~ 2900 4750
$Comp
L D_Schottky D1
U 1 1 59C896A7
P 3500 4500
F 0 "D1" H 3500 4600 50  0000 C CNN
F 1 "D_Schottky" H 3500 4400 50  0000 C CNN
F 2 "" H 3500 4500 50  0001 C CNN
F 3 "" H 3500 4500 50  0001 C CNN
	1    3500 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 4250 3600 4250
Wire Wire Line
	3500 4250 3500 4350
$Comp
L GND #PWR?
U 1 1 59C89712
P 3500 4750
F 0 "#PWR?" H 3500 4500 50  0001 C CNN
F 1 "GND" H 3500 4600 50  0000 C CNN
F 2 "" H 3500 4750 50  0001 C CNN
F 3 "" H 3500 4750 50  0001 C CNN
	1    3500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4650 3500 4750
$Comp
L L L3
U 1 1 59C89754
P 3750 4250
F 0 "L3" V 3700 4250 50  0000 C CNN
F 1 "120uH" V 3825 4250 50  0000 C CNN
F 2 "" H 3750 4250 50  0001 C CNN
F 3 "" H 3750 4250 50  0001 C CNN
	1    3750 4250
	0    -1   -1   0   
$EndComp
Connection ~ 3500 4250
Wire Wire Line
	2850 3750 4000 3750
Wire Wire Line
	3900 4250 4400 4250
$Comp
L CP1 C3
U 1 1 59C897D1
P 4000 4500
F 0 "C3" H 4025 4600 50  0000 L CNN
F 1 "470uF" H 4025 4400 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 4000 4500 50  0001 C CNN
F 3 "" H 4000 4500 50  0001 C CNN
	1    4000 4500
	1    0    0    -1  
$EndComp
Connection ~ 4000 4250
$Comp
L GND #PWR?
U 1 1 59C89819
P 4000 4750
F 0 "#PWR?" H 4000 4500 50  0001 C CNN
F 1 "GND" H 4000 4600 50  0000 C CNN
F 2 "" H 4000 4750 50  0001 C CNN
F 3 "" H 4000 4750 50  0001 C CNN
	1    4000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4650 4000 4750
$Comp
L +5V #PWR?
U 1 1 59C8987B
P 4400 4150
F 0 "#PWR?" H 4400 4000 50  0001 C CNN
F 1 "+5V" H 4400 4290 50  0000 C CNN
F 2 "" H 4400 4150 50  0001 C CNN
F 3 "" H 4400 4150 50  0001 C CNN
	1    4400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4150 4400 4350
$Comp
L CP1 C1
U 1 1 59C898FD
P 2000 4500
F 0 "C1" H 2025 4600 50  0000 L CNN
F 1 "470uF" H 2025 4400 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_10x10" H 2000 4500 50  0001 C CNN
F 3 "" H 2000 4500 50  0001 C CNN
	1    2000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4350 2000 4250
Connection ~ 2000 4250
$Comp
L GND #PWR?
U 1 1 59C89952
P 2000 4750
F 0 "#PWR?" H 2000 4500 50  0001 C CNN
F 1 "GND" H 2000 4600 50  0000 C CNN
F 2 "" H 2000 4750 50  0001 C CNN
F 3 "" H 2000 4750 50  0001 C CNN
	1    2000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4650 2000 4750
Wire Wire Line
	2850 3750 2850 3850
$Comp
L C C2
U 1 1 59C89E3C
P 2350 4500
F 0 "C2" H 2375 4600 50  0000 L CNN
F 1 "0.1uF" H 2375 4400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2388 4350 50  0001 C CNN
F 3 "" H 2350 4500 50  0001 C CNN
	1    2350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4350 2350 4250
Connection ~ 2350 4250
$Comp
L GND #PWR?
U 1 1 59C89E8E
P 2350 4750
F 0 "#PWR?" H 2350 4500 50  0001 C CNN
F 1 "GND" H 2350 4600 50  0000 C CNN
F 2 "" H 2350 4750 50  0001 C CNN
F 3 "" H 2350 4750 50  0001 C CNN
	1    2350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4650 2350 4750
$Comp
L C C4
U 1 1 59C89F19
P 4400 4500
F 0 "C4" H 4425 4600 50  0000 L CNN
F 1 "0.1uF" H 4425 4400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4438 4350 50  0001 C CNN
F 3 "" H 4400 4500 50  0001 C CNN
	1    4400 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59C89F85
P 4400 4750
F 0 "#PWR?" H 4400 4500 50  0001 C CNN
F 1 "GND" H 4400 4600 50  0000 C CNN
F 2 "" H 4400 4750 50  0001 C CNN
F 3 "" H 4400 4750 50  0001 C CNN
	1    4400 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4650 4400 4750
$Comp
L Conn_02x20_Odd_Even J1
U 1 1 59C8A25A
P 7400 3300
F 0 "J1" H 7450 4300 50  0000 C CNN
F 1 "RPi" H 7450 2200 50  0000 C CNN
F 2 "" H 7400 3300 50  0001 C CNN
F 3 "" H 7400 3300 50  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59C8A2FD
P 7800 2300
F 0 "#PWR?" H 7800 2150 50  0001 C CNN
F 1 "+5V" H 7800 2440 50  0000 C CNN
F 2 "" H 7800 2300 50  0001 C CNN
F 3 "" H 7800 2300 50  0001 C CNN
	1    7800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2400 7800 2400
Wire Wire Line
	7800 2300 7800 2500
Wire Wire Line
	7800 2500 7700 2500
Connection ~ 7800 2400
$Comp
L GND #PWR?
U 1 1 59C8A3AF
P 7800 4500
F 0 "#PWR?" H 7800 4250 50  0001 C CNN
F 1 "GND" H 7800 4350 50  0000 C CNN
F 2 "" H 7800 4500 50  0001 C CNN
F 3 "" H 7800 4500 50  0001 C CNN
	1    7800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2600 7800 2600
Wire Wire Line
	7800 2600 7800 4500
$Comp
L GND #PWR?
U 1 1 59C8A419
P 7100 4500
F 0 "#PWR?" H 7100 4250 50  0001 C CNN
F 1 "GND" H 7100 4350 50  0000 C CNN
F 2 "" H 7100 4500 50  0001 C CNN
F 3 "" H 7100 4500 50  0001 C CNN
	1    7100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2800 7100 4500
Wire Wire Line
	7100 2800 7200 2800
$Comp
L Fuse F1
U 1 1 59C96E1A
P 1750 4250
F 0 "F1" V 1830 4250 50  0000 C CNN
F 1 "Fuse" V 1675 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1680 4250 50  0001 C CNN
F 3 "" H 1750 4250 50  0001 C CNN
	1    1750 4250
	0    1    1    0   
$EndComp
NoConn ~ 1800 2550
$Comp
L VD #PWR?
U 1 1 59C97B56
P 1900 2350
F 0 "#PWR?" H 1900 2200 50  0001 C CNN
F 1 "VD" H 1900 2500 50  0000 C CNN
F 2 "" H 1900 2350 50  0001 C CNN
F 3 "" H 1900 2350 50  0001 C CNN
	1    1900 2350
	1    0    0    -1  
$EndComp
$Comp
L VD #PWR?
U 1 1 59C97BBA
P 1500 4150
F 0 "#PWR?" H 1500 4000 50  0001 C CNN
F 1 "VD" H 1500 4300 50  0000 C CNN
F 2 "" H 1500 4150 50  0001 C CNN
F 3 "" H 1500 4150 50  0001 C CNN
	1    1500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4150 1500 4250
Wire Wire Line
	1500 4250 1600 4250
Wire Wire Line
	1800 2450 1900 2450
Wire Wire Line
	1900 2450 1900 2350
Wire Wire Line
	1800 2650 1900 2650
Wire Wire Line
	1900 2650 1900 2750
$Comp
L R R1
U 1 1 59CAA599
P 4000 4000
F 0 "R1" V 4080 4000 50  0000 C CNN
F 1 "R" V 4000 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3930 4000 50  0001 C CNN
F 3 "" H 4000 4000 50  0001 C CNN
	1    4000 4000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59CAA5D5
P 4000 3500
F 0 "R2" V 4080 3500 50  0000 C CNN
F 1 "R" V 4000 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3930 3500 50  0001 C CNN
F 3 "" H 4000 3500 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3650 4000 3850
Wire Wire Line
	4000 4150 4000 4350
Connection ~ 4400 4250
$Comp
L GND #PWR?
U 1 1 59CAA789
P 4250 3350
F 0 "#PWR?" H 4250 3100 50  0001 C CNN
F 1 "GND" H 4250 3200 50  0000 C CNN
F 2 "" H 4250 3350 50  0001 C CNN
F 3 "" H 4250 3350 50  0001 C CNN
	1    4250 3350
	1    0    0    -1  
$EndComp
Connection ~ 4000 3750
Wire Wire Line
	4000 3350 4000 3250
Wire Wire Line
	4000 3250 4250 3250
Wire Wire Line
	4250 3250 4250 3350
$Comp
L R R3
U 1 1 59CAB78A
P 8250 2950
F 0 "R3" V 8330 2950 50  0000 C CNN
F 1 "2k" V 8250 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8180 2950 50  0001 C CNN
F 3 "" H 8250 2950 50  0001 C CNN
	1    8250 2950
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59CAB7ED
P 8250 3850
F 0 "R4" V 8330 3850 50  0000 C CNN
F 1 "2k" V 8250 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8180 3850 50  0001 C CNN
F 3 "" H 8250 3850 50  0001 C CNN
	1    8250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2700 8250 2700
Wire Wire Line
	8250 2700 8250 2800
Wire Wire Line
	8400 3600 8250 3600
Wire Wire Line
	8250 3600 8250 3700
$Comp
L GND #PWR?
U 1 1 59CABA1C
P 8250 3200
F 0 "#PWR?" H 8250 2950 50  0001 C CNN
F 1 "GND" H 8250 3050 50  0000 C CNN
F 2 "" H 8250 3200 50  0001 C CNN
F 3 "" H 8250 3200 50  0001 C CNN
	1    8250 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59CABA60
P 8250 4100
F 0 "#PWR?" H 8250 3850 50  0001 C CNN
F 1 "GND" H 8250 3950 50  0000 C CNN
F 2 "" H 8250 4100 50  0001 C CNN
F 3 "" H 8250 4100 50  0001 C CNN
	1    8250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3100 8250 3200
Wire Wire Line
	8250 4000 8250 4100
NoConn ~ 9700 3700
NoConn ~ 9700 2800
$Comp
L VD #PWR?
U 1 1 59CAC077
P 9800 2500
F 0 "#PWR?" H 9800 2350 50  0001 C CNN
F 1 "VD" H 9800 2650 50  0000 C CNN
F 2 "" H 9800 2500 50  0001 C CNN
F 3 "" H 9800 2500 50  0001 C CNN
	1    9800 2500
	1    0    0    -1  
$EndComp
$Comp
L VD #PWR?
U 1 1 59CAC0FB
P 9800 3400
F 0 "#PWR?" H 9800 3250 50  0001 C CNN
F 1 "VD" H 9800 3550 50  0000 C CNN
F 2 "" H 9800 3400 50  0001 C CNN
F 3 "" H 9800 3400 50  0001 C CNN
	1    9800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2600 9800 2600
Wire Wire Line
	9800 2600 9800 2500
Wire Wire Line
	9700 3500 9800 3500
Wire Wire Line
	9800 3500 9800 3400
Wire Wire Line
	7700 3100 8100 3100
Wire Wire Line
	8100 3100 8100 2600
Wire Wire Line
	8100 2600 8400 2600
Wire Wire Line
	7700 3200 8100 3200
Wire Wire Line
	8100 3200 8100 3500
Wire Wire Line
	8100 3500 8400 3500
Wire Wire Line
	7700 3000 7800 3000
Connection ~ 7800 3000
Wire Wire Line
	7700 3300 7800 3300
Connection ~ 7800 3300
Wire Wire Line
	7700 3800 7800 3800
Connection ~ 7800 3800
Wire Wire Line
	7700 4000 7800 4000
Connection ~ 7800 4000
Wire Wire Line
	7200 4300 7100 4300
Connection ~ 7100 4300
Wire Wire Line
	7200 3600 7100 3600
Connection ~ 7100 3600
$Comp
L Conn_01x02 J2
U 1 1 59CACB1A
P 10300 2700
F 0 "J2" H 10300 2800 50  0000 C CNN
F 1 "Day_Light" H 10300 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10300 2700 50  0001 C CNN
F 3 "" H 10300 2700 50  0001 C CNN
	1    10300 2700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J3
U 1 1 59CACB6D
P 10300 3600
F 0 "J3" H 10300 3700 50  0000 C CNN
F 1 "Night_Light" H 10300 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10300 3600 50  0001 C CNN
F 3 "" H 10300 3600 50  0001 C CNN
	1    10300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2700 10100 2700
Wire Wire Line
	9700 3600 10100 3600
$Comp
L GND #PWR?
U 1 1 59CACD29
P 10000 2900
F 0 "#PWR?" H 10000 2650 50  0001 C CNN
F 1 "GND" H 10000 2750 50  0000 C CNN
F 2 "" H 10000 2900 50  0001 C CNN
F 3 "" H 10000 2900 50  0001 C CNN
	1    10000 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59CACD73
P 10000 3800
F 0 "#PWR?" H 10000 3550 50  0001 C CNN
F 1 "GND" H 10000 3650 50  0000 C CNN
F 2 "" H 10000 3800 50  0001 C CNN
F 3 "" H 10000 3800 50  0001 C CNN
	1    10000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2800 10000 2800
Wire Wire Line
	10000 2800 10000 2900
Wire Wire Line
	10100 3700 10000 3700
Wire Wire Line
	10000 3700 10000 3800
$Comp
L Conn_01x03 J4
U 1 1 59CAD091
P 5950 3200
F 0 "J4" H 5950 3400 50  0000 C CNN
F 1 "Temp_Sensor" H 5950 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5950 3200 50  0001 C CNN
F 3 "" H 5950 3200 50  0001 C CNN
	1    5950 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 3200 6750 3200
$Comp
L +3.3V #PWR?
U 1 1 59CAD2AA
P 7100 2300
F 0 "#PWR?" H 7100 2150 50  0001 C CNN
F 1 "+3.3V" H 7100 2440 50  0000 C CNN
F 2 "" H 7100 2300 50  0001 C CNN
F 3 "" H 7100 2300 50  0001 C CNN
	1    7100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2300 7100 2400
Wire Wire Line
	7100 2400 7200 2400
$Comp
L +3.3V #PWR?
U 1 1 59CAD382
P 6250 2600
F 0 "#PWR?" H 6250 2450 50  0001 C CNN
F 1 "+3.3V" H 6250 2740 50  0000 C CNN
F 2 "" H 6250 2600 50  0001 C CNN
F 3 "" H 6250 2600 50  0001 C CNN
	1    6250 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59CAD3CF
P 6250 3400
F 0 "#PWR?" H 6250 3150 50  0001 C CNN
F 1 "GND" H 6250 3250 50  0000 C CNN
F 2 "" H 6250 3400 50  0001 C CNN
F 3 "" H 6250 3400 50  0001 C CNN
	1    6250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3100 6150 3100
Wire Wire Line
	6250 2600 6250 3100
Wire Wire Line
	6150 3300 6250 3300
Wire Wire Line
	6250 3300 6250 3400
$Comp
L R R5
U 1 1 59CAD519
P 6400 2950
F 0 "R5" V 6480 2950 50  0000 C CNN
F 1 "4.7k" V 6400 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 2950 50  0001 C CNN
F 3 "" H 6400 2950 50  0001 C CNN
	1    6400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2800 6400 2700
Wire Wire Line
	6400 2700 6250 2700
Connection ~ 6250 2700
Wire Wire Line
	6400 3100 6400 3200
Connection ~ 6400 3200
Wire Wire Line
	7200 2700 6750 2700
Wire Wire Line
	6750 2700 6750 3200
$Comp
L Conn_01x04 J5
U 1 1 59CAD993
P 6200 1950
F 0 "J5" H 6200 2150 50  0000 C CNN
F 1 "LCD" H 6200 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6200 1950 50  0001 C CNN
F 3 "" H 6200 1950 50  0001 C CNN
	1    6200 1950
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 59CADB0C
P 6500 1650
F 0 "#PWR?" H 6500 1500 50  0001 C CNN
F 1 "+3.3V" H 6500 1790 50  0000 C CNN
F 2 "" H 6500 1650 50  0001 C CNN
F 3 "" H 6500 1650 50  0001 C CNN
	1    6500 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59CADB5F
P 6500 2150
F 0 "#PWR?" H 6500 1900 50  0001 C CNN
F 1 "GND" H 6500 2000 50  0000 C CNN
F 2 "" H 6500 2150 50  0001 C CNN
F 3 "" H 6500 2150 50  0001 C CNN
	1    6500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1750 6500 1750
Wire Wire Line
	6500 1750 6500 1650
Wire Wire Line
	6400 1850 6500 1850
Wire Wire Line
	6500 1850 6500 2150
Wire Wire Line
	6400 1950 6750 1950
Wire Wire Line
	6750 1950 6750 2600
Wire Wire Line
	6750 2600 7200 2600
Wire Wire Line
	6400 2050 6850 2050
Wire Wire Line
	6850 2050 6850 2500
Wire Wire Line
	6850 2500 7200 2500
$Comp
L Conn_01x06 J6
U 1 1 59CAE0AF
P 5950 4400
F 0 "J6" H 5950 4700 50  0000 C CNN
F 1 "SPI" H 5950 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 5950 4400 50  0001 C CNN
F 3 "" H 5950 4400 50  0001 C CNN
	1    5950 4400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 59CAE19E
P 6250 4700
F 0 "#PWR?" H 6250 4450 50  0001 C CNN
F 1 "GND" H 6250 4550 50  0000 C CNN
F 2 "" H 6250 4700 50  0001 C CNN
F 3 "" H 6250 4700 50  0001 C CNN
	1    6250 4700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 59CAE220
P 6250 4000
F 0 "#PWR?" H 6250 3850 50  0001 C CNN
F 1 "+3.3V" H 6250 4140 50  0000 C CNN
F 2 "" H 6250 4000 50  0001 C CNN
F 3 "" H 6250 4000 50  0001 C CNN
	1    6250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4100 6250 4100
Wire Wire Line
	6250 4100 6250 4000
Wire Wire Line
	6150 4600 6250 4600
Wire Wire Line
	6250 4600 6250 4700
Wire Wire Line
	7200 3300 6400 3300
Wire Wire Line
	6400 3300 6400 4200
Wire Wire Line
	6400 4200 6150 4200
Wire Wire Line
	7200 3400 6500 3400
Wire Wire Line
	6500 3400 6500 4300
Wire Wire Line
	6500 4300 6150 4300
Wire Wire Line
	7200 3500 6600 3500
Wire Wire Line
	6600 3500 6600 4400
Wire Wire Line
	6600 4400 6150 4400
Wire Wire Line
	7700 3500 7950 3500
Wire Wire Line
	7950 3500 7950 4800
Wire Wire Line
	7950 4800 6600 4800
Wire Wire Line
	6600 4800 6600 4500
Wire Wire Line
	6600 4500 6150 4500
$Comp
L AP1507 U1
U 1 1 5A189BEF
P 2950 4100
F 0 "U1" H 3000 4200 60  0000 C CNN
F 1 "AP1507" H 3150 3650 60  0000 C CNN
F 2 "" H 2950 4100 60  0001 C CNN
F 3 "" H 2950 4100 60  0001 C CNN
	1    2950 4100
	1    0    0    -1  
$EndComp
$Comp
L VO14642 U3
U 1 1 5A189F0E
P 9050 2750
F 0 "U3" H 9050 3150 60  0000 C CNN
F 1 "VO14642" H 9000 2800 60  0000 C CNN
F 2 "" H 9050 2750 60  0001 C CNN
F 3 "" H 9050 2750 60  0001 C CNN
	1    9050 2750
	1    0    0    -1  
$EndComp
$Comp
L VO14642 U2
U 1 1 5A189F8D
P 9050 3650
F 0 "U2" H 9050 4050 60  0000 C CNN
F 1 "VO14642" H 9000 3700 60  0000 C CNN
F 2 "" H 9050 3650 60  0001 C CNN
F 3 "" H 9050 3650 60  0001 C CNN
	1    9050 3650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
