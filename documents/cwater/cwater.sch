EESchema Schematic File Version 4
EELAYER 30 0
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
L Device:R R51
U 1 1 61A08A4E
P 4000 2500
F 0 "R51" V 3900 2600 50  0000 C CNN
F 1 "30k" V 3900 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3930 2500 50  0001 C CNN
F 3 "~" H 4000 2500 50  0001 C CNN
	1    4000 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R52
U 1 1 61A0900D
P 4600 2400
F 0 "R52" V 4700 2400 50  0000 C CNN
F 1 "166k" V 4500 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4530 2400 50  0001 C CNN
F 3 "~" H 4600 2400 50  0001 C CNN
	1    4600 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C21
U 1 1 61A09791
P 5750 2550
F 0 "C21" H 5868 2596 50  0000 L CNN
F 1 "100u" H 5868 2505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 5788 2400 50  0001 C CNN
F 3 "~" H 5750 2550 50  0001 C CNN
	1    5750 2550
	1    0    0    1   
$EndComp
$Comp
L Device:C C20
U 1 1 61A09B4F
P 3350 2650
F 0 "C20" H 3465 2696 50  0000 L CNN
F 1 "0.1u" H 3465 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3388 2500 50  0001 C CNN
F 3 "~" H 3350 2650 50  0001 C CNN
	1    3350 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 61A0A90E
P 5250 3000
F 0 "L2" V 5440 3000 50  0000 C CNN
F 1 "22uH" V 5349 3000 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D7.5mm_P5.00mm_Fastron_07P" H 5250 3000 50  0001 C CNN
F 3 "~" H 5250 3000 50  0001 C CNN
	1    5250 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise IC10
U 1 1 61A0C587
P 2500 2500
F 0 "IC10" H 2550 2700 50  0000 C CNN
F 1 "MAX635" H 2550 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2500 2500 50  0001 C CNN
F 3 "~" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2400 2100 2400
Wire Wire Line
	2100 2400 2100 2600
Wire Wire Line
	2100 2700 2300 2700
Wire Wire Line
	2300 2600 2100 2600
Connection ~ 2100 2600
Wire Wire Line
	2100 2600 2100 2700
Wire Wire Line
	2800 2500 3350 2500
Connection ~ 2100 2700
Wire Wire Line
	4150 2500 4350 2500
Wire Wire Line
	4350 2500 4350 2400
Wire Wire Line
	3350 2800 3350 2900
Wire Wire Line
	2100 2900 2100 2700
Wire Wire Line
	2800 2400 4350 2400
Connection ~ 4350 2400
Wire Wire Line
	2800 2600 2950 2600
Wire Wire Line
	2950 2600 2950 2200
Wire Wire Line
	2950 2200 2000 2200
Wire Wire Line
	4350 2400 4450 2400
Wire Wire Line
	3850 2500 3350 2500
Connection ~ 3350 2500
Wire Wire Line
	4750 2400 4900 2400
Connection ~ 4900 2400
Wire Wire Line
	4900 2400 5750 2400
Wire Wire Line
	4900 2400 4900 2000
Wire Wire Line
	2800 2700 2800 3000
Wire Wire Line
	5400 3000 5750 3000
Wire Wire Line
	5750 3000 5750 2700
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise IC7
U 1 1 61A2CAF6
P 2500 3450
F 0 "IC7" H 2550 3650 50  0000 C CNN
F 1 "MAX603" H 2550 3150 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2500 3450 50  0001 C CNN
F 3 "~" H 2500 3450 50  0001 C CNN
	1    2500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C16
U 1 1 61A2DB21
P 3350 3500
F 0 "C16" H 3468 3546 50  0000 L CNN
F 1 "10u" H 3468 3455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 3388 3350 50  0001 C CNN
F 3 "~" H 3350 3500 50  0001 C CNN
	1    3350 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C17
U 1 1 61A2DF51
P 2000 4350
F 0 "C17" H 2118 4396 50  0000 L CNN
F 1 "10u" H 2118 4305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 2038 4200 50  0001 C CNN
F 3 "~" H 2000 4350 50  0001 C CNN
	1    2000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3650 2900 3650
Wire Wire Line
	2900 3650 2900 3550
Wire Wire Line
	2900 3550 2800 3550
Wire Wire Line
	2900 3650 3350 3650
Wire Wire Line
	5750 3650 5750 3000
Connection ~ 2900 3650
Connection ~ 3350 3650
Connection ~ 5750 3000
Wire Wire Line
	2100 2900 3350 2900
Connection ~ 3350 2900
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise IC11
U 1 1 61A103A4
P 4500 5350
F 0 "IC11" H 4550 5750 50  0000 C CNN
F 1 "LP324N" H 4550 4950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4500 5350 50  0001 C CNN
F 3 "~" H 4500 5350 50  0001 C CNN
	1    4500 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61A13E59
P 2950 4900
F 0 "R1" V 2850 4800 50  0000 C CNN
F 1 "270k" V 2850 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 4900 50  0001 C CNN
F 3 "~" H 2950 4900 50  0001 C CNN
	1    2950 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 61A15AFE
P 3500 4900
F 0 "R2" V 3400 4800 50  0000 C CNN
F 1 "270k" V 3400 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 4900 50  0001 C CNN
F 3 "~" H 3500 4900 50  0001 C CNN
	1    3500 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 61A1662E
P 5150 5050
F 0 "R10" V 5050 4950 50  0000 C CNN
F 1 "270k" V 5050 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5080 5050 50  0001 C CNN
F 3 "~" H 5150 5050 50  0001 C CNN
	1    5150 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 61A16BCD
P 5700 5150
F 0 "R9" V 5600 5050 50  0000 C CNN
F 1 "270k" V 5600 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 5150 50  0001 C CNN
F 3 "~" H 5700 5150 50  0001 C CNN
	1    5700 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61A1B6C7
P 5700 5550
F 0 "R3" V 5600 5450 50  0000 C CNN
F 1 "270k" V 5600 5700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 5550 50  0001 C CNN
F 3 "~" H 5700 5550 50  0001 C CNN
	1    5700 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 61A1BDDB
P 5150 5650
F 0 "R4" V 5250 5550 50  0000 C CNN
F 1 "270k" V 5250 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5080 5650 50  0001 C CNN
F 3 "~" H 5150 5650 50  0001 C CNN
	1    5150 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 61A1C3FE
P 5300 6250
F 0 "R6" V 5200 6150 50  0000 C CNN
F 1 "86" V 5200 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 6250 50  0001 C CNN
F 3 "~" H 5300 6250 50  0001 C CNN
	1    5300 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 61A1CA8B
P 4450 6250
F 0 "R5" V 4350 6150 50  0000 C CNN
F 1 "86" V 4350 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4380 6250 50  0001 C CNN
F 3 "~" H 4450 6250 50  0001 C CNN
	1    4450 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 61A1D0BD
P 3500 6250
F 0 "R8" V 3400 6200 50  0000 C CNN
F 1 "270k" V 3400 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 6250 50  0001 C CNN
F 3 "~" H 3500 6250 50  0001 C CNN
	1    3500 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 61A1DA80
P 2950 6250
F 0 "R7" V 2850 6200 50  0000 C CNN
F 1 "270k" V 2850 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 6250 50  0001 C CNN
F 3 "~" H 2950 6250 50  0001 C CNN
	1    2950 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 61A1E3C5
P 3350 5250
F 0 "R14" V 3250 5200 50  0000 C CNN
F 1 "300k" V 3250 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 5250 50  0001 C CNN
F 3 "~" H 3350 5250 50  0001 C CNN
	1    3350 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 61A1ED24
P 3350 5450
F 0 "R15" V 3250 5400 50  0000 C CNN
F 1 "100k" V 3250 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 5450 50  0001 C CNN
F 3 "~" H 3350 5450 50  0001 C CNN
	1    3350 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 61A1F326
P 3350 5700
F 0 "R17" V 3250 5650 50  0000 C CNN
F 1 "100k" V 3250 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 5700 50  0001 C CNN
F 3 "~" H 3350 5700 50  0001 C CNN
	1    3350 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 61A1F959
P 3350 5900
F 0 "R16" V 3250 5850 50  0000 C CNN
F 1 "300k" V 3250 6050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 5900 50  0001 C CNN
F 3 "~" H 3350 5900 50  0001 C CNN
	1    3350 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 61A1FF6D
P 2000 5900
F 0 "R13" H 2070 5946 50  0000 L CNN
F 1 "20k" H 2070 5855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 5900 50  0001 C CNN
F 3 "~" H 2000 5900 50  0001 C CNN
	1    2000 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 61A2180E
P 2000 5400
F 0 "R12" H 2070 5446 50  0000 L CNN
F 1 "10k" H 2070 5355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 5400 50  0001 C CNN
F 3 "~" H 2000 5400 50  0001 C CNN
	1    2000 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 61A21DB2
P 2000 4950
F 0 "R11" H 2070 4996 50  0000 L CNN
F 1 "10k" H 2070 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 4950 50  0001 C CNN
F 3 "~" H 2000 4950 50  0001 C CNN
	1    2000 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C H2O1
U 1 1 61A227C9
P 4850 6250
F 0 "H2O1" V 4700 6200 50  0000 L CNN
F 1 "xxx" V 4965 6205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4888 6100 50  0001 C CNN
F 3 "~" H 4850 6250 50  0001 C CNN
	1    4850 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 5550 2000 5700
Wire Wire Line
	3100 4900 3250 4900
Wire Wire Line
	3500 5450 3700 5450
Wire Wire Line
	3700 5450 3700 5250
Wire Wire Line
	3700 5250 3500 5250
Wire Wire Line
	3700 5250 4300 5250
Connection ~ 3700 5250
Wire Wire Line
	3500 5900 3700 5900
Wire Wire Line
	3850 5900 3850 5450
Wire Wire Line
	3850 5450 4300 5450
Wire Wire Line
	3500 5700 3700 5700
Wire Wire Line
	3700 5700 3700 5900
Connection ~ 3700 5900
Wire Wire Line
	3700 5900 3850 5900
Wire Wire Line
	3200 5450 2950 5450
Wire Wire Line
	2950 5450 2950 5700
Wire Wire Line
	2950 5700 3200 5700
Wire Wire Line
	2000 5100 2000 5150
Wire Wire Line
	2000 5150 2300 5150
Connection ~ 2000 5150
Wire Wire Line
	2000 5150 2000 5250
Wire Wire Line
	3100 6250 3250 6250
Wire Wire Line
	2300 5150 2300 6250
Wire Wire Line
	2300 5150 2300 4900
Wire Wire Line
	2300 4900 2800 4900
Connection ~ 2300 5150
Wire Wire Line
	2000 4500 2600 4500
Wire Wire Line
	2600 4500 2600 5450
Wire Wire Line
	2600 5450 2950 5450
Wire Wire Line
	2000 4500 2000 4800
Connection ~ 2950 5450
Wire Wire Line
	3250 4900 3250 5050
Wire Wire Line
	3250 5050 3900 5050
Wire Wire Line
	3900 5050 3900 5150
Wire Wire Line
	3900 5150 4300 5150
Connection ~ 3250 4900
Wire Wire Line
	3250 4900 3350 4900
Wire Wire Line
	3250 6250 3250 6050
Wire Wire Line
	3250 6050 4000 6050
Wire Wire Line
	4000 6050 4000 5550
Wire Wire Line
	4000 5550 4300 5550
Connection ~ 3250 6250
Wire Wire Line
	3250 6250 3350 6250
Wire Wire Line
	2000 6100 2000 6050
Wire Wire Line
	2400 6200 2400 5250
Wire Wire Line
	2400 5250 3200 5250
Wire Wire Line
	2300 6250 2800 6250
Wire Wire Line
	2500 6300 2500 5900
Wire Wire Line
	2500 5900 3200 5900
Wire Wire Line
	4800 5150 5400 5150
Wire Wire Line
	4800 5050 4900 5050
Wire Wire Line
	5300 5050 5400 5050
Wire Wire Line
	5400 5050 5400 5150
Wire Wire Line
	5400 5150 5550 5150
Connection ~ 5400 5150
Wire Wire Line
	4300 5050 4150 5050
Wire Wire Line
	4150 5050 4150 4900
Wire Wire Line
	4150 4900 3650 4900
Wire Wire Line
	4800 5650 4900 5650
Wire Wire Line
	4800 5550 5400 5550
Wire Wire Line
	5300 5650 5400 5650
Wire Wire Line
	5400 5650 5400 5550
Connection ~ 5400 5550
Wire Wire Line
	5400 5550 5550 5550
Wire Wire Line
	4900 5050 4900 4800
Wire Wire Line
	4900 4800 6100 4800
Wire Wire Line
	6100 4800 6100 5550
Wire Wire Line
	6100 5550 5850 5550
Connection ~ 4900 5050
Wire Wire Line
	4900 5050 5000 5050
Wire Wire Line
	3650 6250 4150 6250
Wire Wire Line
	4150 6250 4150 5650
Wire Wire Line
	4150 5650 4300 5650
Connection ~ 4150 6250
Wire Wire Line
	4150 6250 4300 6250
Wire Wire Line
	4600 6250 4700 6250
Wire Wire Line
	5150 6250 5050 6250
Wire Wire Line
	5050 6250 5050 5950
Connection ~ 5050 6250
Wire Wire Line
	5050 6250 5000 6250
Wire Wire Line
	4150 4900 4150 4700
Wire Wire Line
	4150 4700 6200 4700
Wire Wire Line
	6200 4700 6200 5250
Wire Wire Line
	6200 6250 5450 6250
Connection ~ 4150 4900
Wire Wire Line
	2000 5700 1850 5700
Wire Wire Line
	1850 5700 1850 6500
Wire Wire Line
	1850 6500 6300 6500
Wire Wire Line
	6300 6500 6300 5150
Wire Wire Line
	6300 5150 5850 5150
Connection ~ 2000 5700
Wire Wire Line
	2000 5700 2000 5750
Wire Wire Line
	4000 5350 4300 5350
Wire Wire Line
	5050 6250 5050 6700
Wire Wire Line
	4700 6250 4700 6600
Wire Wire Line
	4700 6600 1750 6600
Connection ~ 4700 6250
Wire Wire Line
	4800 5250 6200 5250
Connection ~ 6200 5250
Wire Wire Line
	6200 5250 6200 6250
Wire Wire Line
	4800 5350 6450 5350
Wire Wire Line
	6450 5350 6450 2000
Wire Wire Line
	6450 2000 4900 2000
Connection ~ 4900 2000
Wire Wire Line
	3350 3850 3350 3650
Connection ~ 2000 4500
$Comp
L Connector_Generic:Conn_01x12 J1
U 1 1 61A32C59
P 1200 5900
F 0 "J1" H 1200 5300 50  0000 C CNN
F 1 "Conn_01x12" H 1200 6500 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 1200 5900 50  0001 C CNN
F 3 "~" H 1200 5900 50  0001 C CNN
	1    1200 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 4500 2000 4500
Wire Wire Line
	1700 3350 2000 3350
Wire Wire Line
	3350 3650 4350 3650
Wire Wire Line
	4350 2900 4350 3650
Wire Wire Line
	3350 2900 4350 2900
Connection ~ 4350 3650
Wire Wire Line
	4350 3650 5750 3650
Wire Wire Line
	4000 3100 4000 5350
Wire Wire Line
	3350 3850 2600 3850
Wire Wire Line
	2600 3850 2600 4250
Connection ~ 2600 4500
Wire Wire Line
	2000 3350 2000 3650
Connection ~ 2000 3350
Wire Wire Line
	2000 3350 2300 3350
Wire Wire Line
	2000 3650 2300 3650
Connection ~ 2000 3650
Wire Wire Line
	2000 3650 2000 4200
Wire Wire Line
	1450 2000 4900 2000
Text Notes 950  5850 0    50   ~ 0
GND
Text Notes 850  5550 0    50   ~ 0
Battery
Text Notes 900  5450 0    50   ~ 0
+5.0V
Text Notes 900  5350 0    50   ~ 0
-7.2V
Wire Wire Line
	2800 3350 3350 3350
Wire Wire Line
	1600 3100 1700 3100
Wire Wire Line
	3350 3350 3350 3100
Connection ~ 3350 3350
Connection ~ 3350 3100
Wire Wire Line
	3350 3100 4000 3100
Wire Wire Line
	2000 2200 2000 3350
Wire Wire Line
	1400 6100 2000 6100
Wire Wire Line
	1400 6200 2400 6200
Wire Wire Line
	1400 6300 2500 6300
Text Notes 950  6150 0    50   ~ 0
PC2\n
Text Notes 950  6250 0    50   ~ 0
PC1
Text Notes 950  6350 0    50   ~ 0
PC0
Text Notes 900  6050 0    50   ~ 0
H2O0
Text Notes 900  5950 0    50   ~ 0
H2O1
Text Notes 900  6450 0    50   ~ 0
ADC0
Wire Wire Line
	1450 2000 1450 5300
Wire Wire Line
	1600 3100 1600 5400
Wire Wire Line
	1700 3350 1700 5500
Wire Wire Line
	1400 5800 1800 5800
Wire Wire Line
	1800 4500 1800 5600
Wire Wire Line
	1750 6600 1750 5900
Wire Wire Line
	1750 5900 1400 5900
Wire Wire Line
	5050 6700 1650 6700
Wire Wire Line
	1650 6700 1650 6000
Wire Wire Line
	1650 6000 1400 6000
Wire Wire Line
	4800 5450 4850 5450
Wire Wire Line
	4850 5450 4850 5950
Wire Wire Line
	4850 5950 5050 5950
Wire Wire Line
	4900 5650 4900 5850
Wire Wire Line
	4900 5850 5650 5850
Wire Wire Line
	5650 5850 5650 6800
Wire Wire Line
	5650 6800 1550 6800
Wire Wire Line
	1550 6800 1550 6400
Wire Wire Line
	1550 6400 1400 6400
Connection ~ 4900 5650
Wire Wire Line
	4900 5650 5000 5650
$Comp
L power:GND #PWR0101
U 1 1 61A2B5C2
P 3000 4400
F 0 "#PWR0101" H 3000 4150 50  0001 C CNN
F 1 "GND" H 3005 4227 50  0000 C CNN
F 2 "" H 3000 4400 50  0001 C CNN
F 3 "" H 3000 4400 50  0001 C CNN
	1    3000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4400 3000 4250
Wire Wire Line
	3000 4250 2600 4250
Connection ~ 2600 4250
Wire Wire Line
	2600 4250 2600 4500
$Comp
L power:+5VA #PWR0102
U 1 1 61A3F02D
P 1700 2950
F 0 "#PWR0102" H 1700 2800 50  0001 C CNN
F 1 "+5VA" H 1715 3123 50  0000 C CNN
F 2 "" H 1700 2950 50  0001 C CNN
F 3 "" H 1700 2950 50  0001 C CNN
	1    1700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2950 1700 3100
Connection ~ 1700 3100
Wire Wire Line
	1700 3100 3350 3100
Wire Wire Line
	1400 5300 1450 5300
Wire Wire Line
	1400 5400 1600 5400
Wire Wire Line
	1400 5500 1700 5500
Wire Wire Line
	1400 5600 1800 5600
Connection ~ 1800 5600
Wire Wire Line
	1800 5600 1800 5700
Wire Wire Line
	1400 5700 1800 5700
Connection ~ 1800 5700
Wire Wire Line
	1800 5700 1800 5800
Text Notes 950  5750 0    50   ~ 0
GND
Text Notes 950  5650 0    50   ~ 0
GND
Text Label 4250 2000 0    50   ~ 0
-7.2V
$Comp
L Diode:1N5818 D6
U 1 1 61D4A34E
P 4900 2550
F 0 "D6" V 4946 2470 50  0000 R CNN
F 1 "1N5818" V 4855 2470 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 4900 2375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4900 2550 50  0001 C CNN
	1    4900 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 3000 4900 3000
Wire Wire Line
	4900 2700 4900 3000
Connection ~ 4900 3000
Wire Wire Line
	4900 3000 5100 3000
$Comp
L Memory_Flash:AT45DB161D-SU U1
U 1 1 64086528
P 6250 1450
F 0 "U1" H 6350 1500 50  0000 L CNN
F 1 "AT45DB161D-SU" H 6150 1400 50  0000 L CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 7400 850 50  0001 C CNN
F 3 "https://www.adestotech.com/wp-content/uploads/doc3500.pdf" H 6250 1450 50  0001 C CNN
	1    6250 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J3
U 1 1 64088C74
P 7450 2750
F 0 "J3" H 7500 3267 50  0000 C CNN
F 1 "Conn_02x08_Top_Bottom" H 7500 3176 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 7450 2750 50  0001 C CNN
F 3 "~" H 7450 2750 50  0001 C CNN
	1    7450 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x10_Top_Bottom J5
U 1 1 64089B83
P 9250 3900
F 0 "J5" H 9300 4517 50  0000 C CNN
F 1 "Conn_02x10_Top_Bottom" H 9300 4426 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical" H 9250 3900 50  0001 C CNN
F 3 "~" H 9250 3900 50  0001 C CNN
	1    9250 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J6
U 1 1 6408B493
P 7150 4550
F 0 "J6" H 7200 5067 50  0000 C CNN
F 1 "Conn_02x08_Top_Bottom" H 7200 4976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 7150 4550 50  0001 C CNN
F 3 "~" H 7150 4550 50  0001 C CNN
	1    7150 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J4
U 1 1 6408C4F5
P 8600 5400
F 0 "J4" H 8650 5817 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 8650 5726 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x06_P2.54mm_Vertical" H 8600 5400 50  0001 C CNN
F 3 "~" H 8600 5400 50  0001 C CNN
	1    8600 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 64086CBF
P 7150 1300
F 0 "J2" H 7230 1292 50  0000 L CNN
F 1 "Conn_01x08" H 7230 1201 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 7150 1300 50  0001 C CNN
F 3 "~" H 7150 1300 50  0001 C CNN
	1    7150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1250 5750 1250
Wire Wire Line
	5750 1250 5750 1000
Wire Wire Line
	5750 1000 6950 1000
Wire Wire Line
	5850 1650 5650 1650
Wire Wire Line
	5650 1650 5650 950 
Wire Wire Line
	5650 950  6800 950 
Wire Wire Line
	6800 950  6800 1100
Wire Wire Line
	6800 1100 6950 1100
Wire Wire Line
	5850 1350 5550 1350
Wire Wire Line
	5550 1350 5550 900 
Wire Wire Line
	5550 900  6750 900 
Wire Wire Line
	6750 900  6750 1200
Wire Wire Line
	6750 1200 6950 1200
Wire Wire Line
	5850 1550 5450 1550
Wire Wire Line
	5450 1550 5450 850 
Wire Wire Line
	5450 850  6850 850 
Wire Wire Line
	6850 850  6850 1300
Wire Wire Line
	6850 1300 6950 1300
Wire Wire Line
	5850 1450 5400 1450
Wire Wire Line
	5400 1450 5400 800 
Wire Wire Line
	5400 800  6900 800 
Wire Wire Line
	6900 800  6900 1400
Wire Wire Line
	6900 1400 6950 1400
Wire Wire Line
	6250 1050 6700 1050
Wire Wire Line
	6700 1050 6700 1300
Wire Wire Line
	6700 1300 6800 1300
Wire Wire Line
	6800 1300 6800 1500
Wire Wire Line
	6800 1500 6950 1500
Wire Wire Line
	6650 1250 6650 1700
Wire Wire Line
	6650 1700 6950 1700
Wire Wire Line
	6250 1850 6800 1850
Wire Wire Line
	6800 1850 6800 1600
Wire Wire Line
	6800 1600 6950 1600
Wire Wire Line
	7250 2450 7150 2450
Wire Wire Line
	7150 2450 7150 2150
Wire Wire Line
	7150 2150 7800 2150
Wire Wire Line
	7800 2150 7800 2450
Wire Wire Line
	7800 2450 7750 2450
Wire Wire Line
	7250 2550 7100 2550
Wire Wire Line
	7100 2550 7100 2100
Wire Wire Line
	7100 2100 7850 2100
Wire Wire Line
	7850 2100 7850 2550
Wire Wire Line
	7850 2550 7750 2550
Wire Wire Line
	7250 2650 7050 2650
Wire Wire Line
	7050 2650 7050 2050
Wire Wire Line
	7050 2050 7900 2050
Wire Wire Line
	7900 2050 7900 2650
Wire Wire Line
	7900 2650 7750 2650
Wire Wire Line
	7250 2750 7000 2750
Wire Wire Line
	7000 2750 7000 2000
Wire Wire Line
	7000 2000 7950 2000
Wire Wire Line
	7950 2000 7950 2750
Wire Wire Line
	7950 2750 7750 2750
Wire Wire Line
	7250 3150 7200 3150
Wire Wire Line
	7200 3150 7200 3250
Wire Wire Line
	7200 3250 7800 3250
Wire Wire Line
	7800 3250 7800 3150
Wire Wire Line
	7800 3150 7750 3150
Wire Wire Line
	7250 3050 7150 3050
Wire Wire Line
	7150 3050 7150 3300
Wire Wire Line
	7150 3300 7850 3300
Wire Wire Line
	7850 3300 7850 3050
Wire Wire Line
	7850 3050 7750 3050
Wire Wire Line
	7250 2950 7100 2950
Wire Wire Line
	7100 2950 7100 3350
Wire Wire Line
	7100 3350 7900 3350
Wire Wire Line
	7900 3350 7900 2950
Wire Wire Line
	7900 2950 7750 2950
Wire Wire Line
	7250 2850 7050 2850
Wire Wire Line
	7050 2850 7050 3400
Wire Wire Line
	7050 3400 7950 3400
Wire Wire Line
	7950 3400 7950 2850
Wire Wire Line
	7950 2850 7750 2850
Wire Wire Line
	8400 5200 8350 5200
Wire Wire Line
	8350 5200 8350 4900
Wire Wire Line
	8350 4900 9000 4900
Wire Wire Line
	9000 4900 9000 5200
Wire Wire Line
	9000 5200 8900 5200
Wire Wire Line
	8400 5300 8300 5300
Wire Wire Line
	8300 5300 8300 4850
Wire Wire Line
	8300 4850 9050 4850
Wire Wire Line
	9050 4850 9050 5300
Wire Wire Line
	9050 5300 8900 5300
Wire Wire Line
	8400 5400 8250 5400
Wire Wire Line
	8250 5400 8250 4800
Wire Wire Line
	8250 4800 9100 4800
Wire Wire Line
	9100 4800 9100 5400
Wire Wire Line
	9100 5400 8900 5400
Wire Wire Line
	8400 5700 8350 5700
Wire Wire Line
	8350 5700 8350 5850
Wire Wire Line
	8350 5850 8950 5850
Wire Wire Line
	8950 5850 8950 5700
Wire Wire Line
	8950 5700 8900 5700
Wire Wire Line
	8400 5600 8300 5600
Wire Wire Line
	8300 5600 8300 5900
Wire Wire Line
	8300 5900 9000 5900
Wire Wire Line
	9000 5900 9000 5600
Wire Wire Line
	9000 5600 8900 5600
Wire Wire Line
	8400 5500 8250 5500
Wire Wire Line
	8250 5500 8250 5950
Wire Wire Line
	8250 5950 9050 5950
Wire Wire Line
	9050 5950 9050 5500
Wire Wire Line
	9050 5500 8900 5500
Wire Wire Line
	9050 3500 9000 3500
Wire Wire Line
	9000 3500 9000 3250
Wire Wire Line
	9000 3250 9600 3250
Wire Wire Line
	9600 3250 9600 3500
Wire Wire Line
	9600 3500 9550 3500
Wire Wire Line
	9050 3600 8950 3600
Wire Wire Line
	8950 3600 8950 3200
Wire Wire Line
	8950 3200 9650 3200
Wire Wire Line
	9650 3200 9650 3600
Wire Wire Line
	9650 3600 9550 3600
Wire Wire Line
	9050 3700 8900 3700
Wire Wire Line
	8900 3700 8900 3150
Wire Wire Line
	8900 3150 9700 3150
Wire Wire Line
	9700 3150 9700 3700
Wire Wire Line
	9700 3700 9550 3700
Wire Wire Line
	9050 3800 8850 3800
Wire Wire Line
	8850 3800 8850 3100
Wire Wire Line
	8850 3100 9750 3100
Wire Wire Line
	9750 3100 9750 3800
Wire Wire Line
	9750 3800 9550 3800
Wire Wire Line
	9050 3900 8800 3900
Wire Wire Line
	8800 3900 8800 3050
Wire Wire Line
	8800 3050 9800 3050
Wire Wire Line
	9800 3050 9800 3900
Wire Wire Line
	9800 3900 9550 3900
Wire Wire Line
	9050 4400 9000 4400
Wire Wire Line
	9000 4400 9000 4500
Wire Wire Line
	9000 4500 9600 4500
Wire Wire Line
	9600 4500 9600 4400
Wire Wire Line
	9600 4400 9550 4400
Wire Wire Line
	9050 4300 8950 4300
Wire Wire Line
	8950 4300 8950 4550
Wire Wire Line
	8950 4550 9650 4550
Wire Wire Line
	9650 4550 9650 4300
Wire Wire Line
	9650 4300 9550 4300
Wire Wire Line
	9050 4200 8900 4200
Wire Wire Line
	8900 4200 8900 4600
Wire Wire Line
	8900 4600 9700 4600
Wire Wire Line
	9700 4600 9700 4200
Wire Wire Line
	9700 4200 9550 4200
Wire Wire Line
	9050 4100 8850 4100
Wire Wire Line
	8850 4100 8850 4650
Wire Wire Line
	8850 4650 9750 4650
Wire Wire Line
	9750 4650 9750 4100
Wire Wire Line
	9750 4100 9550 4100
Wire Wire Line
	9050 4000 8800 4000
Wire Wire Line
	8800 4000 8800 4700
Wire Wire Line
	8800 4700 9800 4700
Wire Wire Line
	9800 4700 9800 4000
Wire Wire Line
	9800 4000 9550 4000
Wire Wire Line
	6950 4250 6900 4250
Wire Wire Line
	6900 4250 6900 4000
Wire Wire Line
	6900 4000 7500 4000
Wire Wire Line
	7500 4000 7500 4250
Wire Wire Line
	7500 4250 7450 4250
Wire Wire Line
	6950 4350 6850 4350
Wire Wire Line
	6850 4350 6850 3950
Wire Wire Line
	6850 3950 7550 3950
Wire Wire Line
	7550 3950 7550 4350
Wire Wire Line
	7550 4350 7450 4350
Wire Wire Line
	6950 4450 6800 4450
Wire Wire Line
	6800 4450 6800 3900
Wire Wire Line
	6800 3900 7600 3900
Wire Wire Line
	7600 3900 7600 4450
Wire Wire Line
	7600 4450 7450 4450
Wire Wire Line
	6950 4550 6750 4550
Wire Wire Line
	6750 4550 6750 3850
Wire Wire Line
	6750 3850 7650 3850
Wire Wire Line
	7650 3850 7650 4550
Wire Wire Line
	7650 4550 7450 4550
Wire Wire Line
	6950 4950 6900 4950
Wire Wire Line
	6900 4950 6900 5050
Wire Wire Line
	6900 5050 7500 5050
Wire Wire Line
	7500 5050 7500 4950
Wire Wire Line
	7500 4950 7450 4950
Wire Wire Line
	6950 4850 6850 4850
Wire Wire Line
	6850 4850 6850 5100
Wire Wire Line
	6850 5100 7550 5100
Wire Wire Line
	7550 5100 7550 4850
Wire Wire Line
	7550 4850 7450 4850
Wire Wire Line
	6950 4750 6800 4750
Wire Wire Line
	6800 4750 6800 5150
Wire Wire Line
	6800 5150 7600 5150
Wire Wire Line
	7600 5150 7600 4750
Wire Wire Line
	7600 4750 7450 4750
Wire Wire Line
	6950 4650 6750 4650
Wire Wire Line
	6750 4650 6750 5200
Wire Wire Line
	6750 5200 7650 5200
Wire Wire Line
	7650 5200 7650 4650
Wire Wire Line
	7650 4650 7450 4650
$EndSCHEMATC
