EESchema Schematic File Version 4
LIBS:JuicyLight32-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev "1.1"
Comp "Ruffles Inc."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_A J2
U 1 1 5C66CCFD
P 1200 1200
F 0 "J2" H 1255 1667 50  0000 C CNN
F 1 "USB_A" H 1255 1576 50  0000 C CNN
F 2 "JuicyLight:USB_A_TH" H 1350 1150 50  0001 C CNN
F 3 " ~" H 1350 1150 50  0001 C CNN
	1    1200 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C66CE13
P 1100 1700
F 0 "#PWR05" H 1100 1450 50  0001 C CNN
F 1 "GND" H 1105 1527 50  0000 C CNN
F 2 "" H 1100 1700 50  0001 C CNN
F 3 "" H 1100 1700 50  0001 C CNN
	1    1100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1700 1100 1650
Wire Wire Line
	1100 1650 1200 1650
Wire Wire Line
	1200 1650 1200 1600
Connection ~ 1100 1650
Wire Wire Line
	1100 1650 1100 1600
$Comp
L power:+5V #PWR09
U 1 1 5C6710FB
P 1850 900
F 0 "#PWR09" H 1850 750 50  0001 C CNN
F 1 "+5V" H 1865 1073 50  0000 C CNN
F 2 "" H 1850 900 50  0001 C CNN
F 3 "" H 1850 900 50  0001 C CNN
	1    1850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1000 1850 1000
NoConn ~ 1500 1200
NoConn ~ 1500 1300
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5C677606
P 5800 2000
F 0 "J1" H 5720 2417 50  0000 C CNN
F 1 "SM06B" H 5720 2326 50  0000 C CNN
F 2 "Connector_JST:JST_SH_SM06B-SRSS-TB_1x06-1MP_P1.00mm_Horizontal" H 5800 2000 50  0001 C CNN
F 3 "~" H 5800 2000 50  0001 C CNN
	1    5800 2000
	-1   0    0    -1  
$EndComp
NoConn ~ 6000 2300
$Comp
L Device:R R30
U 1 1 5C67F4C8
P 6800 1600
F 0 "R30" H 6870 1646 50  0000 L CNN
F 1 "10K" H 6870 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6730 1600 50  0001 C CNN
F 3 "~" H 6800 1600 50  0001 C CNN
	1    6800 1600
	1    0    0    -1  
$EndComp
Text Label 1600 1000 0    50   ~ 0
VBUS
Wire Wire Line
	6000 2100 6550 2100
Wire Wire Line
	6000 2200 6550 2200
$Comp
L power:GND #PWR07
U 1 1 5C688BE9
P 6150 2350
F 0 "#PWR07" H 6150 2100 50  0001 C CNN
F 1 "GND" H 6300 2250 50  0000 C CNN
F 2 "" H 6150 2350 50  0001 C CNN
F 3 "" H 6150 2350 50  0001 C CNN
	1    6150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2350 6150 2000
Wire Wire Line
	6000 2000 6150 2000
Text Label 6250 2100 0    50   ~ 0
SWDIO
Text Label 6250 2200 0    50   ~ 0
SWCLK
Wire Wire Line
	6000 1900 6150 1900
Wire Wire Line
	6150 1900 6150 1400
$Comp
L Device:C C36
U 1 1 5C6970FB
P 6800 2150
F 0 "C36" H 6915 2196 50  0000 L CNN
F 1 "1u" H 6915 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6838 2000 50  0001 C CNN
F 3 "~" H 6800 2150 50  0001 C CNN
	1    6800 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5C6971BC
P 6800 2350
F 0 "#PWR011" H 6800 2100 50  0001 C CNN
F 1 "GND" H 6950 2250 50  0000 C CNN
F 2 "" H 6800 2350 50  0001 C CNN
F 3 "" H 6800 2350 50  0001 C CNN
	1    6800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2350 6800 2300
Wire Wire Line
	6800 1750 6800 1800
Wire Wire Line
	6000 1800 6800 1800
Connection ~ 6800 1800
Wire Wire Line
	6800 1800 6800 1900
$Comp
L Switch:SW_Push SW1
U 1 1 5C6A3284
P 6200 3150
F 0 "SW1" H 6200 3435 50  0000 C CNN
F 1 "SW_Push" H 6200 3344 50  0000 C CNN
F 2 "JuicyLight:SW_TACT_6mm" H 6200 3350 50  0001 C CNN
F 3 "" H 6200 3350 50  0001 C CNN
	1    6200 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5C6ACC69
P 6700 2950
F 0 "R31" H 6770 2996 50  0000 L CNN
F 1 "10K" H 6770 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 2950 50  0001 C CNN
F 3 "~" H 6700 2950 50  0001 C CNN
	1    6700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3150 6650 3150
Wire Wire Line
	6700 3100 6700 3150
Connection ~ 6700 3150
Wire Wire Line
	6650 3200 6650 3150
Connection ~ 6650 3150
Wire Wire Line
	6650 3150 6700 3150
Text Label 9500 2900 0    50   ~ 0
SWDIO
Text Label 9500 3000 0    50   ~ 0
SWCLK
Text Label 7550 1900 0    50   ~ 0
NRST
$Comp
L Device:C C35
U 1 1 5C667DFC
P 8350 1300
F 0 "C35" V 8098 1300 50  0000 C CNN
F 1 "0.1u" V 8189 1300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8388 1150 50  0001 C CNN
F 3 "~" H 8350 1300 50  0001 C CNN
	1    8350 1300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5C66AA9F
P 8050 1400
F 0 "#PWR014" H 8050 1150 50  0001 C CNN
F 1 "GND" H 8055 1227 50  0000 C CNN
F 2 "" H 8050 1400 50  0001 C CNN
F 3 "" H 8050 1400 50  0001 C CNN
	1    8050 1400
	1    0    0    -1  
$EndComp
Text Label 7700 2600 0    50   ~ 0
MOD_SW
Text Label 9500 2800 0    50   ~ 0
LEDOUT
$Comp
L Device:C C30
U 1 1 5C6613D9
P 1850 1400
F 0 "C30" H 1965 1446 50  0000 L CNN
F 1 "1u" H 1965 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1888 1250 50  0001 C CNN
F 3 "~" H 1850 1400 50  0001 C CNN
	1    1850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5C66144F
P 1850 1700
F 0 "#PWR017" H 1850 1450 50  0001 C CNN
F 1 "GND" H 1855 1527 50  0000 C CNN
F 2 "" H 1850 1700 50  0001 C CNN
F 3 "" H 1850 1700 50  0001 C CNN
	1    1850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1550 1850 1700
Wire Wire Line
	1850 1250 1850 1050
Connection ~ 1850 1000
Wire Wire Line
	1850 900  1850 1000
$Comp
L Connector:TestPoint TP20
U 1 1 5C67B1EE
P 5750 3050
F 0 "TP20" H 5500 3250 39  0000 L CNN
F 1 "GND" H 5500 3150 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 5950 3050 50  0001 C CNN
F 3 "~" H 5950 3050 50  0001 C CNN
	1    5750 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1400 8050 1300
Wire Wire Line
	8050 1300 8200 1300
Wire Wire Line
	9400 3000 9800 3000
Wire Wire Line
	9400 2900 9800 2900
$Comp
L power:+3.3V #PWR015
U 1 1 5C8AD0C4
P 8600 800
F 0 "#PWR015" H 8600 650 50  0001 C CNN
F 1 "+3.3V" H 8615 973 50  0000 C CNN
F 2 "" H 8600 800 50  0001 C CNN
F 3 "" H 8600 800 50  0001 C CNN
	1    8600 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C34
U 1 1 5C8B26A0
P 8350 850
F 0 "C34" V 8098 850 50  0000 C CNN
F 1 "10u" V 8189 850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8388 700 50  0001 C CNN
F 3 "~" H 8350 850 50  0001 C CNN
	1    8350 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 1300 8050 850 
Wire Wire Line
	8050 850  8200 850 
Connection ~ 8050 1300
Wire Wire Line
	8500 850  8600 850 
Wire Wire Line
	8500 1300 8600 1300
$Comp
L power:+3.3V #PWR010
U 1 1 5C8ED10C
P 6700 2750
F 0 "#PWR010" H 6700 2600 50  0001 C CNN
F 1 "+3.3V" H 6715 2923 50  0000 C CNN
F 2 "" H 6700 2750 50  0001 C CNN
F 3 "" H 6700 2750 50  0001 C CNN
	1    6700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2800 6700 2750
$Comp
L power:+3.3V #PWR06
U 1 1 5C8F4186
P 6800 1350
F 0 "#PWR06" H 6800 1200 50  0001 C CNN
F 1 "+3.3V" H 6815 1523 50  0000 C CNN
F 2 "" H 6800 1350 50  0001 C CNN
F 3 "" H 6800 1350 50  0001 C CNN
	1    6800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1350 6800 1400
Wire Wire Line
	6150 1400 6800 1400
Connection ~ 6800 1400
Wire Wire Line
	6800 1400 6800 1450
$Comp
L Regulator_Linear:SPX3819M5-L-3-3 U2
U 1 1 5C904317
P 3050 1150
F 0 "U2" H 3050 1492 50  0000 C CNN
F 1 "NJM2896F33" H 3050 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3050 1475 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 3050 1150 50  0001 C CNN
	1    3050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1050 2650 1050
Connection ~ 1850 1050
Wire Wire Line
	1850 1050 1850 1000
Wire Wire Line
	2750 1150 2650 1150
Wire Wire Line
	2650 1150 2650 1050
Connection ~ 2650 1050
Wire Wire Line
	2650 1050 1850 1050
$Comp
L power:GND #PWR013
U 1 1 5C911A56
P 3050 1500
F 0 "#PWR013" H 3050 1250 50  0001 C CNN
F 1 "GND" H 3055 1327 50  0000 C CNN
F 2 "" H 3050 1500 50  0001 C CNN
F 3 "" H 3050 1500 50  0001 C CNN
	1    3050 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1500 3050 1450
$Comp
L power:+3.3V #PWR020
U 1 1 5C91FDDA
P 4350 900
F 0 "#PWR020" H 4350 750 50  0001 C CNN
F 1 "+3.3V" H 4365 1073 50  0000 C CNN
F 2 "" H 4350 900 50  0001 C CNN
F 3 "" H 4350 900 50  0001 C CNN
	1    4350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 900  4350 1050
$Comp
L Device:C C31
U 1 1 5C9274E4
P 3500 1350
F 0 "C31" H 3615 1396 50  0000 L CNN
F 1 "0.01u" H 3615 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 1200 50  0001 C CNN
F 3 "~" H 3500 1350 50  0001 C CNN
	1    3500 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5C927667
P 3500 1500
F 0 "#PWR019" H 3500 1250 50  0001 C CNN
F 1 "GND" H 3505 1327 50  0000 C CNN
F 2 "" H 3500 1500 50  0001 C CNN
F 3 "" H 3500 1500 50  0001 C CNN
	1    3500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1150 3500 1150
Wire Wire Line
	3500 1150 3500 1200
$Comp
L Device:C C32
U 1 1 5C92EEA7
P 3950 1350
F 0 "C32" H 4065 1396 50  0000 L CNN
F 1 "1u" H 4065 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3988 1200 50  0001 C CNN
F 3 "~" H 3950 1350 50  0001 C CNN
	1    3950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5C92EFD9
P 3950 1500
F 0 "#PWR021" H 3950 1250 50  0001 C CNN
F 1 "GND" H 3955 1327 50  0000 C CNN
F 2 "" H 3950 1500 50  0001 C CNN
F 3 "" H 3950 1500 50  0001 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1200 3950 1050
Connection ~ 3950 1050
Wire Wire Line
	3350 1050 3950 1050
$Comp
L Device:C C33
U 1 1 5C93E5A9
P 4350 1350
F 0 "C33" H 4465 1396 50  0000 L CNN
F 1 "0.1u" H 4465 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4388 1200 50  0001 C CNN
F 3 "~" H 4350 1350 50  0001 C CNN
	1    4350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C93E736
P 4350 1500
F 0 "#PWR0101" H 4350 1250 50  0001 C CNN
F 1 "GND" H 4355 1327 50  0000 C CNN
F 2 "" H 4350 1500 50  0001 C CNN
F 3 "" H 4350 1500 50  0001 C CNN
	1    4350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1050 4350 1050
Wire Wire Line
	4350 1050 4350 1200
Connection ~ 4350 1050
$Comp
L MCU_ST_STM32F0:STM32F042F6Px U1
U 1 1 5C80E83F
P 8800 2400
F 0 "U1" H 8600 2650 50  0000 C CNN
F 1 "STM32F042F6Px" H 8700 2550 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8300 1700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00105814.pdf" H 8800 2400 50  0001 C CNN
	1    8800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3200 8600 3350
Connection ~ 8600 850 
Connection ~ 8600 1300
Wire Wire Line
	8600 1300 8600 1400
Wire Wire Line
	8600 850  8600 1300
Wire Wire Line
	8600 800  8600 850 
Wire Wire Line
	8700 1700 8700 1400
Wire Wire Line
	8700 1400 8600 1400
Connection ~ 8600 1400
Wire Wire Line
	8600 1400 8600 1700
NoConn ~ 9400 2000
NoConn ~ 9400 2200
NoConn ~ 9400 2400
NoConn ~ 9400 2600
NoConn ~ 9400 2700
NoConn ~ 8200 2900
$Comp
L Connector:TestPoint TP2
U 1 1 5C904D40
P 11000 2400
F 0 "TP2" V 10900 2650 39  0000 L CNN
F 1 "D1IN33" V 11000 2600 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 11200 2400 50  0001 C CNN
F 3 "~" H 11200 2400 50  0001 C CNN
	1    11000 2400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5C82FDD3
P 10400 2800
F 0 "Q1" H 10605 2846 50  0000 L CNN
F 1 "BSS138" H 10605 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10600 2725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 10400 2800 50  0001 L CNN
	1    10400 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C82FE68
P 10500 3000
F 0 "#PWR0102" H 10500 2750 50  0001 C CNN
F 1 "GND" H 10505 2827 50  0000 C CNN
F 2 "" H 10500 3000 50  0001 C CNN
F 3 "" H 10500 3000 50  0001 C CNN
	1    10500 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5C82FF03
P 10500 2350
F 0 "R32" H 10570 2396 50  0000 L CNN
F 1 "4.7K" H 10570 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10430 2350 50  0001 C CNN
F 3 "~" H 10500 2350 50  0001 C CNN
	1    10500 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5C830034
P 10500 2200
F 0 "#PWR0103" H 10500 2050 50  0001 C CNN
F 1 "+5V" H 10515 2373 50  0000 C CNN
F 2 "" H 10500 2200 50  0001 C CNN
F 3 "" H 10500 2200 50  0001 C CNN
	1    10500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2600 10500 2550
Wire Wire Line
	10500 2550 11000 2550
Connection ~ 10500 2550
Wire Wire Line
	10500 2550 10500 2500
Text Label 10700 2550 0    50   ~ 0
D1IN
Wire Wire Line
	11000 2400 11000 2550
Wire Wire Line
	9400 2800 10200 2800
NoConn ~ 9400 2100
NoConn ~ 8200 2700
NoConn ~ 9400 2500
NoConn ~ 9400 1900
NoConn ~ 8200 3000
Text Notes 10600 900  0    202  ~ 0
2.0
NoConn ~ 9400 2300
Wire Wire Line
	6800 1900 8200 1900
Connection ~ 6800 1900
Wire Wire Line
	6800 1900 6800 2000
Wire Wire Line
	7500 3150 7500 2600
Wire Wire Line
	6700 3150 7500 3150
Wire Wire Line
	7500 2600 8200 2600
Wire Wire Line
	5750 3050 5750 3150
Wire Wire Line
	6000 3150 5750 3150
Connection ~ 5750 3150
Text Label 10850 4150 0    50   ~ 0
D10OUT
Wire Wire Line
	10800 4150 11100 4150
Wire Wire Line
	5750 3150 5750 3450
$Comp
L power:GND #PWR016
U 1 1 5C6581D9
P 8600 3350
F 0 "#PWR016" H 8600 3100 50  0001 C CNN
F 1 "GND" H 8605 3177 50  0000 C CNN
F 2 "" H 8600 3350 50  0001 C CNN
F 3 "" H 8600 3350 50  0001 C CNN
	1    8600 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5C6A83A6
P 6650 3500
F 0 "#PWR012" H 6650 3250 50  0001 C CNN
F 1 "GND" H 6750 3400 50  0000 C CNN
F 2 "" H 6650 3500 50  0001 C CNN
F 3 "" H 6650 3500 50  0001 C CNN
	1    6650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C37
U 1 1 5C6A5905
P 6650 3350
F 0 "C37" H 6765 3396 50  0000 L CNN
F 1 "1u" H 6765 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6688 3200 50  0001 C CNN
F 3 "~" H 6650 3350 50  0001 C CNN
	1    6650 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C6A35AA
P 5750 3450
F 0 "#PWR08" H 5750 3200 50  0001 C CNN
F 1 "GND" H 5850 3300 50  0000 C CNN
F 2 "" H 5750 3450 50  0001 C CNN
F 3 "" H 5750 3450 50  0001 C CNN
	1    5750 3450
	1    0    0    -1  
$EndComp
Text Label 9900 4150 0    50   ~ 0
D9OUT
Text Label 8750 4150 0    50   ~ 0
D8OUT
Text Label 7700 4150 0    50   ~ 0
D7OUT
Text Label 6650 4150 0    50   ~ 0
D6OUT
Text Label 5600 4150 0    50   ~ 0
D5OUT
Text Label 4600 4150 0    50   ~ 0
D4OUT
Text Label 3500 4150 0    50   ~ 0
D3OUT
Text Label 2450 4150 0    50   ~ 0
D2OUT
Text Label 1400 4150 0    50   ~ 0
D1OUT
Text Label 500  4150 0    50   ~ 0
D1IN
Wire Wire Line
	500  4150 700  4150
Wire Wire Line
	9400 5300 10500 5300
Connection ~ 9400 5300
Connection ~ 8350 5300
Wire Wire Line
	8350 5300 9400 5300
Wire Wire Line
	9400 5000 10500 5000
Connection ~ 9400 5000
Connection ~ 8350 5000
Wire Wire Line
	8350 5000 9400 5000
$Comp
L Device:C C10
U 1 1 5C663EBA
P 10500 5150
F 0 "C10" H 10615 5196 50  0000 L CNN
F 1 "0.1u" H 10615 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10538 5000 50  0001 C CNN
F 3 "~" H 10500 5150 50  0001 C CNN
	1    10500 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5C663DF7
P 9400 5150
F 0 "C9" H 9515 5196 50  0000 L CNN
F 1 "0.1u" H 9515 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9438 5000 50  0001 C CNN
F 3 "~" H 9400 5150 50  0001 C CNN
	1    9400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4500 10500 4500
Connection ~ 9400 4500
Wire Wire Line
	8350 4500 9400 4500
Connection ~ 8350 4500
Wire Wire Line
	7300 4500 8350 4500
Connection ~ 7300 4500
Wire Wire Line
	6250 4500 7300 4500
Connection ~ 6250 4500
Wire Wire Line
	5200 4500 6250 4500
Connection ~ 5200 4500
Wire Wire Line
	4150 4500 5200 4500
Connection ~ 4150 4500
Wire Wire Line
	3100 4500 4150 4500
Connection ~ 3100 4500
Wire Wire Line
	2050 4500 3100 4500
Connection ~ 2050 4500
Wire Wire Line
	1000 4500 1000 4550
Connection ~ 1000 4500
Wire Wire Line
	1000 4500 2050 4500
Wire Wire Line
	9700 4150 10200 4150
Wire Wire Line
	8650 4150 9100 4150
Wire Wire Line
	10500 4500 10500 4450
Wire Wire Line
	9400 4500 9400 4450
Wire Wire Line
	9400 3800 8350 3800
Connection ~ 9400 3800
Wire Wire Line
	9400 3850 9400 3800
Connection ~ 8350 3800
Wire Wire Line
	10500 3800 9400 3800
Wire Wire Line
	10500 3850 10500 3800
$Comp
L LED:WS2812B D10
U 1 1 5C65DDB4
P 10500 4150
F 0 "D10" H 10800 3950 50  0000 L CNN
F 1 "WS2812B" H 10700 3850 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 10550 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 10600 3775 50  0001 L TNN
	1    10500 4150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D9
U 1 1 5C65DD48
P 9400 4150
F 0 "D9" H 9750 4000 50  0000 L CNN
F 1 "WS2812B" H 9700 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 9450 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 9500 3775 50  0001 L TNN
	1    9400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4150 8050 4150
Wire Wire Line
	6550 4150 7000 4150
Wire Wire Line
	5500 4150 5950 4150
Wire Wire Line
	4450 4150 4900 4150
Wire Wire Line
	3400 4150 3850 4150
Wire Wire Line
	2350 4150 2800 4150
Wire Wire Line
	1300 4150 1750 4150
Wire Wire Line
	7300 3800 6250 3800
Connection ~ 7300 3800
Wire Wire Line
	7300 3850 7300 3800
Wire Wire Line
	6250 3800 5200 3800
Connection ~ 6250 3800
Wire Wire Line
	6250 3850 6250 3800
Wire Wire Line
	5200 3800 4150 3800
Connection ~ 5200 3800
Wire Wire Line
	5200 3850 5200 3800
Wire Wire Line
	4150 3800 3100 3800
Connection ~ 4150 3800
Wire Wire Line
	4150 3850 4150 3800
Wire Wire Line
	3100 3800 2050 3800
Connection ~ 3100 3800
Wire Wire Line
	3100 3850 3100 3800
Wire Wire Line
	2050 3800 1000 3800
Connection ~ 2050 3800
Wire Wire Line
	2050 3850 2050 3800
Connection ~ 1000 3800
Wire Wire Line
	1000 3850 1000 3800
Wire Wire Line
	1000 3700 1000 3800
$Comp
L power:+5V #PWR01
U 1 1 5C655060
P 1000 3700
F 0 "#PWR01" H 1000 3550 50  0001 C CNN
F 1 "+5V" H 1100 3800 50  0000 C CNN
F 2 "" H 1000 3700 50  0001 C CNN
F 3 "" H 1000 3700 50  0001 C CNN
	1    1000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3800 7300 3800
Wire Wire Line
	8350 3850 8350 3800
Wire Wire Line
	7300 5000 6250 5000
Connection ~ 7300 5000
Wire Wire Line
	6250 5000 5200 5000
Connection ~ 6250 5000
Wire Wire Line
	5200 5000 4150 5000
Connection ~ 5200 5000
Wire Wire Line
	4150 5000 3100 5000
Connection ~ 4150 5000
Wire Wire Line
	3100 5000 2050 5000
Connection ~ 3100 5000
Wire Wire Line
	2050 5000 1000 5000
Connection ~ 2050 5000
Connection ~ 1000 5000
Wire Wire Line
	1000 5000 1000 4900
Wire Wire Line
	8350 5000 7300 5000
$Comp
L power:+5V #PWR03
U 1 1 5C65438F
P 1000 4900
F 0 "#PWR03" H 1000 4750 50  0001 C CNN
F 1 "+5V" H 1100 5000 50  0000 C CNN
F 2 "" H 1000 4900 50  0001 C CNN
F 3 "" H 1000 4900 50  0001 C CNN
	1    1000 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C653D66
P 1000 5400
F 0 "#PWR04" H 1000 5150 50  0001 C CNN
F 1 "GND" H 1005 5227 50  0000 C CNN
F 2 "" H 1000 5400 50  0001 C CNN
F 3 "" H 1000 5400 50  0001 C CNN
	1    1000 5400
	1    0    0    -1  
$EndComp
Connection ~ 1000 5300
Wire Wire Line
	7300 5300 6250 5300
Connection ~ 7300 5300
Wire Wire Line
	6250 5300 5200 5300
Connection ~ 6250 5300
Wire Wire Line
	5200 5300 4150 5300
Connection ~ 5200 5300
Wire Wire Line
	4150 5300 3100 5300
Connection ~ 4150 5300
Wire Wire Line
	3100 5300 2050 5300
Connection ~ 3100 5300
Wire Wire Line
	2050 5300 1000 5300
Connection ~ 2050 5300
Wire Wire Line
	1000 5300 1000 5400
Wire Wire Line
	8350 5300 7300 5300
$Comp
L Device:C C8
U 1 1 5C65374D
P 8350 5150
F 0 "C8" H 8465 5196 50  0000 L CNN
F 1 "0.1u" H 8465 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8388 5000 50  0001 C CNN
F 3 "~" H 8350 5150 50  0001 C CNN
	1    8350 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C653680
P 7300 5150
F 0 "C7" H 7415 5196 50  0000 L CNN
F 1 "0.1u" H 7415 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7338 5000 50  0001 C CNN
F 3 "~" H 7300 5150 50  0001 C CNN
	1    7300 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C6535C8
P 6250 5150
F 0 "C6" H 6365 5196 50  0000 L CNN
F 1 "0.1u" H 6365 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6288 5000 50  0001 C CNN
F 3 "~" H 6250 5150 50  0001 C CNN
	1    6250 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C653517
P 5200 5150
F 0 "C5" H 5315 5196 50  0000 L CNN
F 1 "0.1u" H 5315 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5238 5000 50  0001 C CNN
F 3 "~" H 5200 5150 50  0001 C CNN
	1    5200 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C65345D
P 4150 5150
F 0 "C4" H 4265 5196 50  0000 L CNN
F 1 "0.1u" H 4265 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4188 5000 50  0001 C CNN
F 3 "~" H 4150 5150 50  0001 C CNN
	1    4150 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C65337A
P 3100 5150
F 0 "C3" H 3215 5196 50  0000 L CNN
F 1 "0.1u" H 3215 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3138 5000 50  0001 C CNN
F 3 "~" H 3100 5150 50  0001 C CNN
	1    3100 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C653298
P 2050 5150
F 0 "C2" H 2165 5196 50  0000 L CNN
F 1 "0.1u" H 2165 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2088 5000 50  0001 C CNN
F 3 "~" H 2050 5150 50  0001 C CNN
	1    2050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C65320F
P 1000 5150
F 0 "C1" H 1115 5196 50  0000 L CNN
F 1 "0.1u" H 1115 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1038 5000 50  0001 C CNN
F 3 "~" H 1000 5150 50  0001 C CNN
	1    1000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4450 8350 4500
Wire Wire Line
	7300 4450 7300 4500
Wire Wire Line
	6250 4450 6250 4500
Wire Wire Line
	5200 4450 5200 4500
Wire Wire Line
	4150 4450 4150 4500
Wire Wire Line
	3100 4450 3100 4500
Wire Wire Line
	2050 4450 2050 4500
Wire Wire Line
	1000 4450 1000 4500
$Comp
L power:GND #PWR02
U 1 1 5C65232D
P 1000 4550
F 0 "#PWR02" H 1000 4300 50  0001 C CNN
F 1 "GND" H 900 4450 50  0000 C CNN
F 2 "" H 1000 4550 50  0001 C CNN
F 3 "" H 1000 4550 50  0001 C CNN
	1    1000 4550
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D8
U 1 1 5C651FCE
P 8350 4150
F 0 "D8" H 8700 4000 50  0000 L CNN
F 1 "WS2812B" H 8650 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 8400 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8450 3775 50  0001 L TNN
	1    8350 4150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D7
U 1 1 5C651F37
P 7300 4150
F 0 "D7" H 7600 4000 50  0000 L CNN
F 1 "WS2812B" H 7600 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 7350 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7400 3775 50  0001 L TNN
	1    7300 4150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D6
U 1 1 5C651EB9
P 6250 4150
F 0 "D6" H 6600 4000 50  0000 L CNN
F 1 "WS2812B" H 6550 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 6300 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6350 3775 50  0001 L TNN
	1    6250 4150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D5
U 1 1 5C651E30
P 5200 4150
F 0 "D5" H 5500 4000 50  0000 L CNN
F 1 "WS2812B" H 5450 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 5250 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5300 3775 50  0001 L TNN
	1    5200 4150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D4
U 1 1 5C651DB8
P 4150 4150
F 0 "D4" H 4450 4000 50  0000 L CNN
F 1 "WS2812B" H 4400 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 4200 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4250 3775 50  0001 L TNN
	1    4150 4150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D3
U 1 1 5C651D5F
P 3100 4150
F 0 "D3" H 3400 4000 50  0000 L CNN
F 1 "WS2812B" H 3400 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 3150 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3200 3775 50  0001 L TNN
	1    3100 4150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D2
U 1 1 5C651C2B
P 2050 4150
F 0 "D2" H 2350 4000 50  0000 L CNN
F 1 "WS2812B" H 2300 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 2100 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2150 3775 50  0001 L TNN
	1    2050 4150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D1
U 1 1 5C651A03
P 1000 4150
F 0 "D1" H 1300 4000 50  0000 L CNN
F 1 "WS2812B" H 1250 3900 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 1050 3850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1100 3775 50  0001 L TNN
	1    1000 4150
	1    0    0    -1  
$EndComp
Text Label 5850 6200 0    50   ~ 0
D15OUT
Text Label 4850 6200 0    50   ~ 0
D14OUT
Text Label 3750 6200 0    50   ~ 0
D13OUT
Text Label 2700 6200 0    50   ~ 0
D12OUT
Text Label 1650 6200 0    50   ~ 0
D11OUT
Text Label 650  6200 0    50   ~ 0
D10OUT
Wire Wire Line
	650  6200 950  6200
Wire Wire Line
	5450 6550 6500 6550
Connection ~ 5450 6550
Wire Wire Line
	4400 6550 5450 6550
Connection ~ 4400 6550
Wire Wire Line
	3350 6550 4400 6550
Connection ~ 3350 6550
Wire Wire Line
	2300 6550 3350 6550
Connection ~ 2300 6550
Wire Wire Line
	1250 6550 1250 6600
Connection ~ 1250 6550
Wire Wire Line
	1250 6550 2300 6550
Wire Wire Line
	5750 6200 6200 6200
Wire Wire Line
	4700 6200 5150 6200
Wire Wire Line
	3650 6200 4100 6200
Wire Wire Line
	2600 6200 3050 6200
Wire Wire Line
	1550 6200 2000 6200
Wire Wire Line
	6500 5850 5450 5850
Wire Wire Line
	6500 5900 6500 5850
Wire Wire Line
	5450 5850 4400 5850
Connection ~ 5450 5850
Wire Wire Line
	5450 5900 5450 5850
Wire Wire Line
	4400 5850 3350 5850
Connection ~ 4400 5850
Wire Wire Line
	4400 5900 4400 5850
Wire Wire Line
	3350 5850 2300 5850
Connection ~ 3350 5850
Wire Wire Line
	3350 5900 3350 5850
Wire Wire Line
	2300 5850 1250 5850
Connection ~ 2300 5850
Wire Wire Line
	2300 5900 2300 5850
Connection ~ 1250 5850
Wire Wire Line
	1250 5900 1250 5850
Wire Wire Line
	1250 5750 1250 5850
Wire Wire Line
	6500 7050 5450 7050
Wire Wire Line
	5450 7050 4400 7050
Connection ~ 5450 7050
Wire Wire Line
	4400 7050 3350 7050
Connection ~ 4400 7050
Wire Wire Line
	3350 7050 2300 7050
Connection ~ 3350 7050
Wire Wire Line
	2300 7050 1250 7050
Connection ~ 2300 7050
Connection ~ 1250 7050
Wire Wire Line
	1250 7050 1250 6950
$Comp
L power:+5V #PWR023
U 1 1 5CF202BF
P 1250 6950
F 0 "#PWR023" H 1250 6800 50  0001 C CNN
F 1 "+5V" H 1350 7050 50  0000 C CNN
F 2 "" H 1250 6950 50  0001 C CNN
F 3 "" H 1250 6950 50  0001 C CNN
	1    1250 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5CF202C5
P 1250 7450
F 0 "#PWR024" H 1250 7200 50  0001 C CNN
F 1 "GND" H 1255 7277 50  0000 C CNN
F 2 "" H 1250 7450 50  0001 C CNN
F 3 "" H 1250 7450 50  0001 C CNN
	1    1250 7450
	1    0    0    -1  
$EndComp
Connection ~ 1250 7350
Wire Wire Line
	6500 7350 5450 7350
Wire Wire Line
	5450 7350 4400 7350
Connection ~ 5450 7350
Wire Wire Line
	4400 7350 3350 7350
Connection ~ 4400 7350
Wire Wire Line
	3350 7350 2300 7350
Connection ~ 3350 7350
Wire Wire Line
	2300 7350 1250 7350
Connection ~ 2300 7350
Wire Wire Line
	1250 7350 1250 7450
$Comp
L Device:C C16
U 1 1 5CF202D8
P 6500 7200
F 0 "C16" H 6615 7246 50  0000 L CNN
F 1 "0.1u" H 6615 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 7050 50  0001 C CNN
F 3 "~" H 6500 7200 50  0001 C CNN
	1    6500 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5CF202DE
P 5450 7200
F 0 "C15" H 5565 7246 50  0000 L CNN
F 1 "0.1u" H 5565 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5488 7050 50  0001 C CNN
F 3 "~" H 5450 7200 50  0001 C CNN
	1    5450 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5CF202E4
P 4400 7200
F 0 "C14" H 4515 7246 50  0000 L CNN
F 1 "0.1u" H 4515 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4438 7050 50  0001 C CNN
F 3 "~" H 4400 7200 50  0001 C CNN
	1    4400 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5CF202EA
P 3350 7200
F 0 "C13" H 3465 7246 50  0000 L CNN
F 1 "0.1u" H 3465 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3388 7050 50  0001 C CNN
F 3 "~" H 3350 7200 50  0001 C CNN
	1    3350 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5CF202F0
P 2300 7200
F 0 "C12" H 2415 7246 50  0000 L CNN
F 1 "0.1u" H 2415 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2338 7050 50  0001 C CNN
F 3 "~" H 2300 7200 50  0001 C CNN
	1    2300 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5CF202F6
P 1250 7200
F 0 "C11" H 1365 7246 50  0000 L CNN
F 1 "0.1u" H 1365 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1288 7050 50  0001 C CNN
F 3 "~" H 1250 7200 50  0001 C CNN
	1    1250 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 6500 6500 6550
Wire Wire Line
	5450 6500 5450 6550
Wire Wire Line
	4400 6500 4400 6550
Wire Wire Line
	3350 6500 3350 6550
Wire Wire Line
	2300 6500 2300 6550
Wire Wire Line
	1250 6500 1250 6550
$Comp
L power:GND #PWR022
U 1 1 5CF20302
P 1250 6600
F 0 "#PWR022" H 1250 6350 50  0001 C CNN
F 1 "GND" H 1150 6500 50  0000 C CNN
F 2 "" H 1250 6600 50  0001 C CNN
F 3 "" H 1250 6600 50  0001 C CNN
	1    1250 6600
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D16
U 1 1 5CF20308
P 6500 6200
F 0 "D16" H 6850 6050 50  0000 L CNN
F 1 "WS2812B" H 6800 5950 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 6550 5900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6600 5825 50  0001 L TNN
	1    6500 6200
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D15
U 1 1 5CF2030E
P 5450 6200
F 0 "D15" H 5750 6050 50  0000 L CNN
F 1 "WS2812B" H 5700 5950 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 5500 5900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5550 5825 50  0001 L TNN
	1    5450 6200
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D14
U 1 1 5CF20314
P 4400 6200
F 0 "D14" H 4700 6050 50  0000 L CNN
F 1 "WS2812B" H 4650 5950 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 4450 5900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4500 5825 50  0001 L TNN
	1    4400 6200
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D13
U 1 1 5CF2031A
P 3350 6200
F 0 "D13" H 3650 6050 50  0000 L CNN
F 1 "WS2812B" H 3650 5950 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 3400 5900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3450 5825 50  0001 L TNN
	1    3350 6200
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D12
U 1 1 5CF20320
P 2300 6200
F 0 "D12" H 2600 6050 50  0000 L CNN
F 1 "WS2812B" H 2550 5950 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 2350 5900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2400 5825 50  0001 L TNN
	1    2300 6200
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D11
U 1 1 5CF20326
P 1250 6200
F 0 "D11" H 1550 6050 50  0000 L CNN
F 1 "WS2812B" H 1500 5950 50  0000 L CNN
F 2 "JuicyLight:OST45050C1A" H 1300 5900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1350 5825 50  0001 L TNN
	1    1250 6200
	1    0    0    -1  
$EndComp
NoConn ~ 6800 6200
$Comp
L power:+5V #PWR018
U 1 1 5CF3599C
P 1250 5750
F 0 "#PWR018" H 1250 5600 50  0001 C CNN
F 1 "+5V" H 1350 5850 50  0000 C CNN
F 2 "" H 1250 5750 50  0001 C CNN
F 3 "" H 1250 5750 50  0001 C CNN
	1    1250 5750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5CF1C934
P 7300 5600
F 0 "H1" H 7400 5646 50  0000 L CNN
F 1 "MountingHole" H 7400 5555 50  0000 L CNN
F 2 "JuicyLight:Hole" H 7300 5600 50  0001 C CNN
F 3 "~" H 7300 5600 50  0001 C CNN
	1    7300 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5CF4B091
P 7300 5800
F 0 "H2" H 7400 5846 50  0000 L CNN
F 1 "MountingHole" H 7400 5755 50  0000 L CNN
F 2 "JuicyLight:Hole" H 7300 5800 50  0001 C CNN
F 3 "~" H 7300 5800 50  0001 C CNN
	1    7300 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5CF54B3E
P 7300 6000
F 0 "H3" H 7400 6046 50  0000 L CNN
F 1 "MountingHole" H 7400 5955 50  0000 L CNN
F 2 "JuicyLight:Hole" H 7300 6000 50  0001 C CNN
F 3 "~" H 7300 6000 50  0001 C CNN
	1    7300 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5CF5E62A
P 7300 6200
F 0 "H4" H 7400 6246 50  0000 L CNN
F 1 "MountingHole" H 7400 6155 50  0000 L CNN
F 2 "JuicyLight:Hole" H 7300 6200 50  0001 C CNN
F 3 "~" H 7300 6200 50  0001 C CNN
	1    7300 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5CF68151
P 8050 5600
F 0 "H5" H 8150 5646 50  0000 L CNN
F 1 "MountingHole" H 8150 5555 50  0000 L CNN
F 2 "JuicyLight:Hole" H 8050 5600 50  0001 C CNN
F 3 "~" H 8050 5600 50  0001 C CNN
	1    8050 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5CF71BB3
P 8050 5800
F 0 "H6" H 8150 5846 50  0000 L CNN
F 1 "MountingHole" H 8150 5755 50  0000 L CNN
F 2 "JuicyLight:Hole" H 8050 5800 50  0001 C CNN
F 3 "~" H 8050 5800 50  0001 C CNN
	1    8050 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5CF7B62D
P 8050 6000
F 0 "H7" H 8150 6046 50  0000 L CNN
F 1 "MountingHole" H 8150 5955 50  0000 L CNN
F 2 "JuicyLight:Hole" H 8050 6000 50  0001 C CNN
F 3 "~" H 8050 6000 50  0001 C CNN
	1    8050 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5CF85085
P 8050 6200
F 0 "H8" H 8150 6246 50  0000 L CNN
F 1 "MountingHole" H 8150 6155 50  0000 L CNN
F 2 "JuicyLight:Hole" H 8050 6200 50  0001 C CNN
F 3 "~" H 8050 6200 50  0001 C CNN
	1    8050 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H9
U 1 1 5CF90303
P 8750 5600
F 0 "H9" H 8850 5646 50  0000 L CNN
F 1 "MountingHole" H 8850 5555 50  0000 L CNN
F 2 "JuicyLight:Hole" H 8750 5600 50  0001 C CNN
F 3 "~" H 8750 5600 50  0001 C CNN
	1    8750 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 5CF90309
P 8750 5800
F 0 "H10" H 8850 5846 50  0000 L CNN
F 1 "MountingHole" H 8850 5755 50  0000 L CNN
F 2 "JuicyLight:Hole" H 8750 5800 50  0001 C CNN
F 3 "~" H 8750 5800 50  0001 C CNN
	1    8750 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H11
U 1 1 5CF9030F
P 8750 6000
F 0 "H11" H 8850 6046 50  0000 L CNN
F 1 "MountingHole" H 8850 5955 50  0000 L CNN
F 2 "JuicyLight:Hole" H 8750 6000 50  0001 C CNN
F 3 "~" H 8750 6000 50  0001 C CNN
	1    8750 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H12
U 1 1 5CF90315
P 8750 6200
F 0 "H12" H 8850 6246 50  0000 L CNN
F 1 "MountingHole" H 8850 6155 50  0000 L CNN
F 2 "JuicyLight:Hole" H 8750 6200 50  0001 C CNN
F 3 "~" H 8750 6200 50  0001 C CNN
	1    8750 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H13
U 1 1 5CF9031B
P 9500 5600
F 0 "H13" H 9600 5646 50  0000 L CNN
F 1 "MountingHole" H 9600 5555 50  0000 L CNN
F 2 "JuicyLight:Hole" H 9500 5600 50  0001 C CNN
F 3 "~" H 9500 5600 50  0001 C CNN
	1    9500 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H14
U 1 1 5CF90321
P 9500 5800
F 0 "H14" H 9600 5846 50  0000 L CNN
F 1 "MountingHole" H 9600 5755 50  0000 L CNN
F 2 "JuicyLight:Hole" H 9500 5800 50  0001 C CNN
F 3 "~" H 9500 5800 50  0001 C CNN
	1    9500 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H15
U 1 1 5CF90327
P 9500 6000
F 0 "H15" H 9600 6046 50  0000 L CNN
F 1 "MountingHole" H 9600 5955 50  0000 L CNN
F 2 "JuicyLight:Hole" H 9500 6000 50  0001 C CNN
F 3 "~" H 9500 6000 50  0001 C CNN
	1    9500 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H16
U 1 1 5CF9032D
P 9500 6200
F 0 "H16" H 9600 6246 50  0000 L CNN
F 1 "MountingHole" H 9600 6155 50  0000 L CNN
F 2 "JuicyLight:Hole" H 9500 6200 50  0001 C CNN
F 3 "~" H 9500 6200 50  0001 C CNN
	1    9500 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H17
U 1 1 5CF9A1E1
P 10200 5600
F 0 "H17" H 10300 5646 50  0000 L CNN
F 1 "MountingHole" H 10300 5555 50  0000 L CNN
F 2 "JuicyLight:Hole" H 10200 5600 50  0001 C CNN
F 3 "~" H 10200 5600 50  0001 C CNN
	1    10200 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H18
U 1 1 5CF9A1E7
P 10200 5800
F 0 "H18" H 10300 5846 50  0000 L CNN
F 1 "MountingHole" H 10300 5755 50  0000 L CNN
F 2 "JuicyLight:Hole" H 10200 5800 50  0001 C CNN
F 3 "~" H 10200 5800 50  0001 C CNN
	1    10200 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H19
U 1 1 5CF9A1ED
P 10200 6000
F 0 "H19" H 10300 6046 50  0000 L CNN
F 1 "MountingHole" H 10300 5955 50  0000 L CNN
F 2 "JuicyLight:Hole" H 10200 6000 50  0001 C CNN
F 3 "~" H 10200 6000 50  0001 C CNN
	1    10200 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H20
U 1 1 5CF9A1F3
P 10200 6200
F 0 "H20" H 10300 6246 50  0000 L CNN
F 1 "MountingHole" H 10300 6155 50  0000 L CNN
F 2 "JuicyLight:Hole" H 10200 6200 50  0001 C CNN
F 3 "~" H 10200 6200 50  0001 C CNN
	1    10200 6200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
