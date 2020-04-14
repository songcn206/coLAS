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
L Kicad_symbols:pic32mx274 U1
U 1 1 5E965B47
P 5750 3200
F 0 "U1" H 5950 3965 50  0000 C CNN
F 1 "pic32mx274" H 5950 3874 50  0000 C CNN
F 2 "kicad_footprints:pic32mx274_soic28" H 6300 3200 50  0001 C CNN
F 3 "" H 6300 3200 50  0001 C CNN
	1    5750 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J1
U 1 1 5E966E5E
P 1850 5700
F 0 "J1" H 1878 5676 50  0000 L CNN
F 1 "Conn_01x10_Female" H 1878 5585 50  0000 L CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-10S-0.5SH_1x10-1MP_P0.50mm_Horizontal" H 1850 5700 50  0001 C CNN
F 3 "~" H 1850 5700 50  0001 C CNN
	1    1850 5700
	1    0    0    -1  
$EndComp
Text Label 1450 5300 2    50   ~ 0
MCLR
Text Label 1450 5400 2    50   ~ 0
VDD
Text Label 1450 5500 2    50   ~ 0
GND
Text Label 1450 5600 2    50   ~ 0
PGD
Text Label 1450 5700 2    50   ~ 0
PGC
Text Label 5050 2750 2    50   ~ 0
MCLR
Text Label 6800 3350 0    50   ~ 0
PGD
Text Label 6800 3450 0    50   ~ 0
PGC
Text Label 5050 3950 2    50   ~ 0
VDD
Text Label 6800 3150 0    50   ~ 0
GND
Text Label 5100 3450 2    50   ~ 0
GND
Text Label 6800 3950 0    50   ~ 0
GND
Wire Wire Line
	5050 2750 5200 2750
Wire Wire Line
	5100 3450 5200 3450
Wire Wire Line
	5050 3950 5200 3950
Wire Wire Line
	6700 3950 6800 3950
Wire Wire Line
	6700 3450 6800 3450
Wire Wire Line
	6700 3350 6800 3350
Wire Wire Line
	6700 3150 6800 3150
Wire Wire Line
	1450 5300 1650 5300
Wire Wire Line
	1450 5400 1650 5400
Wire Wire Line
	1450 5500 1650 5500
Wire Wire Line
	1450 5600 1650 5600
Wire Wire Line
	1450 5700 1650 5700
$Comp
L Amplifier_Operational:TSV914 U?
U 1 1 5E971669
P 2850 1750
F 0 "U?" H 2850 2117 50  0000 C CNN
F 1 "TSV914" H 2850 2026 50  0000 C CNN
F 2 "" H 2800 1850 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/tsv911.pdf" H 2900 1950 50  0001 C CNN
	1    2850 1750
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TSV914 U?
U 2 1 5E976E00
P 4450 1750
F 0 "U?" H 4450 2117 50  0000 C CNN
F 1 "TSV914" H 4450 2026 50  0000 C CNN
F 2 "" H 4400 1850 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/tsv911.pdf" H 4500 1950 50  0001 C CNN
	2    4450 1750
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TSV914 U?
U 3 1 5E978039
P 6050 1750
F 0 "U?" H 6050 2117 50  0000 C CNN
F 1 "TSV914" H 6050 2026 50  0000 C CNN
F 2 "" H 6000 1850 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/tsv911.pdf" H 6100 1950 50  0001 C CNN
	3    6050 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker_Ultrasound LS?
U 1 1 5E97938F
P 2150 3100
F 0 "LS?" H 2324 3096 50  0000 L CNN
F 1 "Speaker_Ultrasound" H 2324 3005 50  0000 L CNN
F 2 "" H 2115 3050 50  0001 C CNN
F 3 "~" H 2115 3050 50  0001 C CNN
	1    2150 3100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
