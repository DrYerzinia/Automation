v 20130925 2
C 52400 43100 1 0 1 connector5-2.sym
{
T 52100 45550 5 10 0 0 180 2 1
device=CONNECTOR_5
T 51700 42850 5 10 1 1 180 8 1
footprint=GSIP5
T 51700 45600 5 10 1 1 180 8 1
refdes=IN
}
C 52900 43400 1 90 0 gnd-1.sym
N 52600 43500 52400 43500 4
C 52300 45200 1 0 0 3.3V-plus-1.sym
N 52500 45200 52500 45100 4
N 52500 45100 52400 45100 4
C 52600 44300 1 270 1 busripper-2.sym
{
T 53000 44300 5 8 0 0 90 2 1
device=none
}
C 52600 43900 1 270 1 busripper-2.sym
{
T 53000 43900 5 8 0 0 90 2 1
device=none
}
N 52400 43900 52600 43900 4
{
T 52900 43800 5 10 1 1 0 0 1
netname=SDA
}
N 52400 44300 52600 44300 4
{
T 52900 44200 5 10 1 1 0 0 1
netname=SCL
}
C 54200 43100 1 0 0 connector5-2.sym
{
T 54500 45550 5 10 0 0 180 8 1
device=CONNECTOR_5
T 54900 42850 5 10 1 1 180 2 1
footprint=GSIP5
T 54900 45600 5 10 1 1 180 2 1
refdes=OUT
}
C 53800 43400 1 270 1 gnd-1.sym
N 54100 43500 54200 43500 4
C 54300 45200 1 0 1 3.3V-plus-1.sym
N 54100 45200 54100 45100 4
N 54100 45100 54200 45100 4
C 54100 44300 1 90 0 busripper-2.sym
{
T 53700 44300 5 8 0 0 90 0 1
device=none
}
C 54100 43900 1 90 0 busripper-2.sym
{
T 53700 43900 5 8 0 0 90 0 1
device=none
}
N 54200 43900 54100 43900 4
{
T 53800 43800 5 10 1 1 0 6 1
netname=SDA
}
N 54200 44300 54100 44300 4
{
T 53800 44200 5 10 1 1 0 6 1
netname=SCL
}
N 52400 44700 52800 44700 4
N 53800 44700 54200 44700 4
B 58400 42500 4600 1100 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 59600 43100 9 24 1 0 0 0 1
Automation
T 59800 42900 9 10 1 0 0 0 1
CC3000 Radio Module
T 58600 42600 9 10 1 0 0 0 1
Revision 1
T 62800 42600 9 10 1 0 0 6 1
Dr. Yerzinia
C 52800 44800 1 270 0 jumper-1.sym
{
T 53300 44500 5 8 0 0 270 0 1
device=JUMPER
T 52700 44900 5 10 1 1 0 0 1
refdes=J1
T 53000 44900 5 10 1 1 0 0 1
footprint=JMP_SLDR-2N
}
T 51600 42600 9 10 1 0 0 0 1
Connectors
C 55600 43300 1 0 0 MB85RC04V.sym
{
T 56000 45200 5 10 1 1 0 0 1
refdes=U2
T 56700 45200 5 10 1 1 0 0 1
footprint=SO8
T 56000 43300 5 10 1 1 0 0 1
device=MV85RC04V
}
C 55400 43200 1 0 0 gnd-1.sym
N 55500 43500 55500 44900 4
N 55500 43700 55600 43700 4
N 57600 45000 57600 44900 4
N 57600 44900 57500 44900 4
N 57500 44500 57600 44500 4
N 55500 44900 55600 44900 4
N 55500 44500 55600 44500 4
N 55500 44100 55600 44100 4
C 57400 45000 1 0 0 3.3V-plus-1.sym
N 57500 44100 57600 44100 4
{
T 57900 44000 5 10 1 1 0 0 1
netname=SCL
}
C 57600 44100 1 270 1 busripper-2.sym
{
T 58000 44100 5 8 0 0 90 2 1
device=none
}
N 57500 43700 57600 43700 4
{
T 57900 43600 5 10 1 1 0 0 1
netname=SDA
}
C 57600 43700 1 270 1 busripper-2.sym
{
T 58000 43700 5 8 0 0 90 2 1
device=none
}
C 57900 44400 1 90 0 gnd-1.sym
B 55200 42500 3200 3400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 55300 42600 9 10 1 0 0 0 1
FRAM
C 61400 48600 1 270 1 busripper-2.sym
{
T 61800 48600 5 8 0 0 90 2 1
device=none
}
C 61400 49000 1 270 1 busripper-2.sym
{
T 61800 49000 5 8 0 0 90 2 1
device=none
}
N 61300 49000 61400 49000 4
{
T 61700 48900 5 10 1 1 0 0 1
netname=SDA
}
N 61300 48600 61400 48600 4
{
T 61700 48500 5 10 1 1 0 0 1
netname=SCL
}
B 51500 42500 3700 3400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 61600 52000 1 0 1 3.3V-plus-1.sym
N 61700 51800 61300 51800 4
N 61400 51800 61400 52000 4
C 62600 51600 1 0 1 capacitor-1.sym
{
T 62400 52300 5 10 0 0 0 6 1
device=CAPACITOR
T 62400 52500 5 10 0 0 0 6 1
symversion=0.1
T 62600 51900 5 10 1 1 0 6 1
refdes=C1
T 62000 51600 5 10 1 1 0 6 1
footprint=0805
T 62000 51900 5 10 1 1 0 6 1
value=100nF
}
C 62800 51400 1 0 1 gnd-1.sym
N 62700 51800 62600 51800 4
N 62700 51700 62700 51800 4
C 61800 51500 1 90 1 gnd-1.sym
N 61500 51400 61300 51400 4
C 50800 50200 1 0 1 connector5-2.sym
{
T 50500 52650 5 10 0 0 0 6 1
device=CONNECTOR_5
T 50100 49950 5 10 1 1 0 0 1
footprint=GSIP5
T 50100 52700 5 10 1 1 0 0 1
refdes=PROGPIC
}
C 51000 50200 1 0 1 gnd-1.sym
N 50900 50500 50900 50600 4
C 51100 52300 1 0 1 3.3V-plus-1.sym
N 50900 52200 50900 52300 4
N 50800 51800 51800 51800 4
N 51800 51400 50800 51400 4
N 51800 51000 50800 51000 4
N 50900 50600 50800 50600 4
N 50900 52200 50800 52200 4
T 51600 46000 9 10 1 0 0 0 1
Radio
N 61300 49800 61400 49800 4
{
T 61700 49700 5 10 1 1 0 0 1
netname=SCK
}
C 61400 49800 1 270 1 busripper-2.sym
{
T 61800 49800 5 8 0 0 90 2 1
device=none
}
N 61300 50200 61400 50200 4
{
T 61700 50100 5 10 1 1 0 0 1
netname=SDO
}
C 61400 50200 1 270 1 busripper-2.sym
{
T 61800 50200 5 8 0 0 90 2 1
device=none
}
N 61300 50600 61400 50600 4
{
T 61700 50500 5 10 1 1 0 0 1
netname=SDI
}
C 61400 50600 1 270 1 busripper-2.sym
{
T 61800 50600 5 8 0 0 90 2 1
device=none
}
N 61300 49400 61400 49400 4
{
T 61700 49300 5 10 1 1 0 0 1
netname=CS
}
C 61400 49400 1 270 1 busripper-2.sym
{
T 61800 49400 5 8 0 0 90 2 1
device=none
}
N 61300 48200 61400 48200 4
{
T 61700 48100 5 10 1 1 0 0 1
netname=INT
}
C 61400 48200 1 270 1 busripper-2.sym
{
T 61800 48200 5 8 0 0 90 2 1
device=none
}
N 61300 51000 61400 51000 4
{
T 61700 50900 5 10 1 1 0 0 1
netname=ENABLE
}
C 61400 51000 1 270 1 busripper-2.sym
{
T 61800 51000 5 8 0 0 90 2 1
device=none
}
C 51800 47800 1 0 0 PIC24F04KA201.sym
{
T 52200 52100 5 10 1 1 0 0 1
refdes=U1
T 52200 47800 5 10 1 1 0 0 1
footprint=SSOP20
T 60900 47800 5 10 1 1 0 6 1
device=PIC24F04KA201
}
N 51600 49800 51800 49800 4
C 51700 48200 1 90 0 busripper-2.sym
{
T 51300 48200 5 8 0 0 90 0 1
device=none
}
N 51800 48200 51700 48200 4
{
T 51400 48100 5 10 1 1 0 6 1
netname=SIG
}
N 52600 44700 52600 45300 4
N 52600 45300 52800 45300 4
{
T 53100 45200 5 10 1 1 0 0 1
netname=SIG
}
C 52800 45300 1 270 1 busripper-2.sym
{
T 53200 45300 5 8 0 0 90 2 1
device=none
}
C 45500 43300 1 0 0 CC3000.sym
{
T 45900 53200 5 10 1 1 0 0 1
refdes=U3
T 48100 53200 5 10 1 1 0 6 1
device=CC3000
T 45900 43400 5 10 1 1 0 2 1
footprint=CC3000
}
N 45500 52900 45300 52900 4
N 45300 52900 45300 43500 4
C 45200 43200 1 0 0 gnd-1.sym
N 45500 52500 45300 52500 4
N 45500 52100 45300 52100 4
N 45500 51700 45300 51700 4
N 45500 51300 45300 51300 4
N 45500 43700 45300 43700 4
N 45500 44100 45300 44100 4
N 45500 44500 45300 44500 4
N 45500 44900 45300 44900 4
N 45500 45300 45300 45300 4
N 45500 45700 45300 45700 4
N 45500 46100 45300 46100 4
N 45500 46500 45300 46500 4
N 45500 46900 45300 46900 4
N 45500 47300 45300 47300 4
N 45500 47700 45300 47700 4
N 45500 48100 45300 48100 4
N 45500 48500 45300 48500 4
N 45500 48900 45300 48900 4
N 45500 49300 45300 49300 4
N 45500 50900 45300 50900 4
N 45500 50500 45300 50500 4
N 45500 50100 45300 50100 4
N 45500 49700 45300 49700 4
C 48500 43700 1 0 0 gnd-1.sym
N 48600 44000 48600 44100 4
N 48600 44100 48500 44100 4
C 50000 46600 1 0 1 3.3V-plus-1.sym
N 49800 46600 49800 45700 4
N 49800 45700 48500 45700 4
N 48500 45300 48700 45300 4
N 48700 45300 48700 45700 4
N 48500 49300 48700 49300 4
N 48700 49300 48700 48900 4
N 48700 48900 48500 48900 4
N 48500 48100 48700 48100 4
N 48700 48100 48700 48500 4
N 48700 48500 48500 48500 4
N 48500 50500 48700 50500 4
N 48700 50500 48700 50900 4
N 48700 50900 48500 50900 4
C 49000 52400 1 90 0 gnd-1.sym
N 48700 52500 48500 52500 4
C 48700 52200 1 270 0 testpt-1.sym
{
T 49200 52000 5 10 1 1 0 0 1
refdes=TP1
T 49600 51800 5 10 0 0 270 0 1
device=TESTPOINT
T 49100 52100 5 10 0 1 0 0 1
footprint=CON_TP__Vector_K24
}
N 48500 52100 48700 52100 4
C 48700 51800 1 270 0 testpt-1.sym
{
T 49200 51600 5 10 1 1 0 0 1
refdes=TP2
T 49600 51400 5 10 0 0 270 0 1
device=TESTPOINT
T 49100 51700 5 10 0 1 0 0 1
footprint=CON_TP__Vector_K24
}
C 48700 51400 1 270 0 testpt-1.sym
{
T 49200 51200 5 10 1 1 0 0 1
refdes=TP3
T 49600 51000 5 10 0 0 270 0 1
device=TESTPOINT
T 49000 51200 5 10 0 1 0 0 1
footprint=CON_TP__Vector_K24
}
N 48700 51700 48500 51700 4
N 48500 51300 48700 51300 4
N 48500 46100 48600 46100 4
{
T 48900 46000 5 10 1 1 0 0 1
netname=SCK
}
C 48600 46100 1 270 1 busripper-2.sym
{
T 49000 46100 5 8 0 0 90 2 1
device=none
}
N 48500 47300 48600 47300 4
{
T 48900 47200 5 10 1 1 0 0 1
netname=SDI
}
C 48600 47300 1 270 1 busripper-2.sym
{
T 49000 47300 5 8 0 0 90 2 1
device=none
}
N 48500 46500 48600 46500 4
{
T 48900 46400 5 10 1 1 0 0 1
netname=SDO
}
C 48600 46500 1 270 1 busripper-2.sym
{
T 49000 46500 5 8 0 0 90 2 1
device=none
}
N 48500 47700 48600 47700 4
{
T 48900 47600 5 10 1 1 0 0 1
netname=CS
}
C 48600 47700 1 270 1 busripper-2.sym
{
T 49000 47700 5 8 0 0 90 2 1
device=none
}
N 48500 46900 48600 46900 4
{
T 48900 46800 5 10 1 1 0 0 1
netname=INT
}
C 48600 46900 1 270 1 busripper-2.sym
{
T 49000 46900 5 8 0 0 90 2 1
device=none
}
N 48500 44900 48600 44900 4
{
T 48900 44800 5 10 1 1 0 0 1
netname=ENABLE
}
C 48600 44900 1 270 1 busripper-2.sym
{
T 49000 44900 5 8 0 0 90 2 1
device=none
}
C 49700 44300 1 0 0 capacitor-1.sym
{
T 49900 45000 5 10 0 0 0 0 1
device=CAPACITOR
T 50000 44600 5 10 1 1 0 6 1
refdes=C4
T 49900 45200 5 10 0 0 0 0 1
symversion=0.1
T 50300 44400 5 10 1 1 0 2 1
footprint=0805
}
C 49600 43400 1 90 0 inductor-1.sym
{
T 49100 43600 5 10 0 0 90 0 1
device=INDUCTOR
T 49600 43900 5 10 1 1 0 0 1
refdes=L1
T 48900 43600 5 10 0 0 90 0 1
symversion=0.1
T 49600 43700 5 10 1 1 0 0 1
footprint=0805
}
C 50900 43400 1 90 0 inductor-1.sym
{
T 50400 43600 5 10 0 0 90 0 1
device=INDUCTOR
T 50900 43900 5 10 1 1 0 0 1
refdes=L2
T 50200 43600 5 10 0 0 90 0 1
symversion=0.1
T 50900 43700 5 10 1 1 0 0 1
footprint=0805
}
N 48500 44500 49700 44500 4
N 49500 44500 49500 44300 4
N 50800 44300 50800 44500 4
N 50600 44500 51000 44500 4
C 49400 42900 1 0 0 gnd-1.sym
N 49500 43200 49500 43400 4
C 50700 42900 1 0 0 gnd-1.sym
N 50800 43200 50800 43400 4
N 51000 44500 51000 44600 4
L 51500 42500 44900 42500 3 0 0 0 -1 -1
L 44900 42500 44900 53600 3 0 0 0 -1 -1
L 44900 53600 49700 53600 3 0 0 0 -1 -1
L 49700 53600 49700 47100 3 0 0 0 -1 -1
L 51500 45800 51500 47100 3 0 0 0 -1 -1
L 51500 47100 49700 47100 3 0 0 0 -1 -1
L 49700 53600 63000 53600 3 0 0 0 -1 -1
L 63000 53600 63000 43600 3 0 0 0 -1 -1
C 50700 44600 1 0 0 antenna.sym
{
T 49300 45300 5 10 1 1 0 0 1
refdes=ANT1
T 49300 45100 5 10 1 1 0 0 1
footprint=2500AT44M0400
}
T 45000 42600 9 10 1 0 0 0 1
WiFi
C 48700 50200 1 270 0 testpt-1.sym
{
T 49600 49800 5 10 0 0 270 0 1
device=TESTPOINT
T 48900 50100 5 10 0 1 0 0 1
footprint=CON_TP__Vector_K24
T 49200 50000 5 10 1 1 0 0 1
refdes=TP4
}
C 48700 49800 1 270 0 testpt-1.sym
{
T 49600 49400 5 10 0 0 270 0 1
device=TESTPOINT
T 49200 49600 5 10 1 1 0 0 1
refdes=TP5
T 48900 49700 5 10 0 1 0 0 1
footprint=CON_TP__Vector_K24
}
N 48700 50100 48500 50100 4
N 48500 49700 48700 49700 4
C 50900 46000 1 180 0 capacitor-1.sym
{
T 50700 45300 5 10 0 0 180 0 1
device=CAPACITOR
T 50300 45900 5 10 1 1 0 6 1
refdes=C3
T 50700 45100 5 10 0 0 180 0 1
symversion=0.1
T 50600 45700 5 10 1 1 0 2 1
footprint=0805
T 50600 45900 5 10 1 1 0 0 1
value=1uF
}
C 50900 46600 1 180 0 capacitor-1.sym
{
T 50700 45900 5 10 0 0 180 0 1
device=CAPACITOR
T 50300 46500 5 10 1 1 0 6 1
refdes=C2
T 50700 45700 5 10 0 0 180 0 1
symversion=0.1
T 50600 46300 5 10 1 1 0 2 1
footprint=0805
T 50600 46500 5 10 1 1 0 0 1
value=1uF
}
N 50000 46400 49800 46400 4
C 51400 45700 1 90 0 gnd-1.sym
N 51100 45800 50900 45800 4
C 51400 46300 1 90 0 gnd-1.sym
N 51100 46400 50900 46400 4
N 50000 45800 49800 45800 4
