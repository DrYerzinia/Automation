v 20130925 2
C 32200 53300 1 0 0 bridge-2.sym
{
T 32400 54300 5 10 1 1 0 0 1
refdes=U1
T 32400 54500 5 10 0 0 0 0 1
device=BRIDGE
T 32400 54700 5 10 0 0 0 0 1
symversion=0.1
T 32400 54600 5 10 1 1 0 0 1
device=MDB8SFSCT
T 32800 54300 5 10 1 1 0 0 1
footprint=MICRODIP4
}
C 38800 55800 1 0 1 connector2-2.sym
{
T 38100 57100 5 10 1 1 0 0 1
refdes=ACIN
T 38500 57050 5 10 0 0 0 6 1
device=CONNECTOR_2
T 38100 55550 5 10 1 1 0 0 1
footprint=TERM_2_5MM
}
C 33900 53900 1 90 0 gnd-1.sym
N 33400 54000 33600 54000 4
C 30600 54000 1 0 0 fuse-1.sym
{
T 30800 54400 5 10 0 0 0 0 1
device=FUSE
T 30600 54100 5 10 1 1 0 0 1
refdes=F1
T 30800 54600 5 10 0 0 0 0 1
symversion=0.1
T 31400 54100 5 10 1 1 0 0 1
value=1A
T 30600 53700 5 10 1 1 0 0 1
footprint=FUSE_SST
}
C 31900 52900 1 90 0 varistor-1.sym
{
T 31100 53000 5 10 0 0 90 0 1
device=MOV
T 30250 53200 5 10 0 0 90 0 1
device=VARISTOR
T 30800 53200 5 10 1 1 0 0 1
refdes=V1
T 30800 53000 5 10 1 1 0 0 1
footprint=ACY200
}
N 30400 54000 30600 54000 4
{
T 30100 53900 5 10 1 1 0 6 1
netname=HotIn
}
N 31500 54000 32200 54000 4
N 31700 54000 31700 53800 4
N 31500 52700 32000 52700 4
{
T 31200 52600 5 10 1 1 0 6 1
netname=Neutral
}
N 31700 52700 31700 52900 4
N 32000 52700 32000 53500 4
N 32000 53500 32200 53500 4
C 37400 48600 1 90 0 capacitor-1.sym
{
T 36700 48800 5 10 0 0 90 0 1
device=CAPACITOR
T 36600 49000 5 10 1 1 0 0 1
refdes=C4
T 36500 48800 5 10 0 0 90 0 1
symversion=0.1
T 36600 48800 5 10 1 1 0 0 1
value=100nF
T 36600 48600 5 10 1 1 0 0 1
footprint=0805
}
C 37700 52400 1 90 0 capacitor-1.sym
{
T 37000 52600 5 10 0 0 90 0 1
device=CAPACITOR
T 37000 52700 5 10 1 1 0 0 1
refdes=C2
T 36800 52600 5 10 0 0 90 0 1
symversion=0.1
T 37000 52500 5 10 1 1 0 0 1
value=1uF
T 37000 52300 5 10 1 1 0 0 1
footprint=0805
}
C 35800 51900 1 0 0 capacitor-1.sym
{
T 36000 52600 5 10 0 0 0 0 1
device=CAPACITOR
T 35900 52200 5 10 1 1 0 0 1
refdes=C1
T 36000 52800 5 10 0 0 0 0 1
symversion=0.1
T 36400 52200 5 10 1 1 0 0 1
value=100nF
T 36400 51800 5 10 1 1 0 0 1
footprint=0805
}
C 37900 53300 1 270 0 capacitor-2.sym
{
T 38600 53100 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 37800 53000 5 10 1 1 0 0 1
refdes=C3
T 38800 53100 5 10 0 0 270 0 1
symversion=0.1
T 38000 52200 5 10 1 1 90 0 1
value=470uF
T 38500 52100 5 10 1 1 90 0 1
footprint=FCAPEL
}
C 33700 52400 1 90 0 resistor-1.sym
{
T 33300 52700 5 10 0 0 90 0 1
device=RESISTOR
T 33000 53000 5 10 1 1 0 0 1
refdes=R1
T 33000 52800 5 10 1 1 0 0 1
value=200k
T 33000 52600 5 10 1 1 0 0 1
footprint=0805
}
C 33700 51300 1 90 0 resistor-1.sym
{
T 33300 51600 5 10 0 0 90 0 1
device=RESISTOR
T 33000 52000 5 10 1 1 0 0 1
refdes=R2
T 33000 51800 5 10 1 1 0 0 1
value=200k
T 33000 51600 5 10 1 1 0 0 1
footprint=0805
}
C 34700 51300 1 90 0 resistor-1.sym
{
T 34300 51600 5 10 0 0 90 0 1
device=RESISTOR
T 34000 51900 5 10 1 1 0 0 1
refdes=R4
T 34000 51700 5 10 1 1 0 0 1
value=510k
T 34000 51500 5 10 1 1 0 0 1
footprint=0805
}
C 34700 52400 1 90 0 resistor-1.sym
{
T 34300 52700 5 10 0 0 90 0 1
device=RESISTOR
T 34000 53000 5 10 1 1 0 0 1
refdes=R3
T 34000 52800 5 10 1 1 0 0 1
value=510k
T 34000 52600 5 10 1 1 0 0 1
footprint=0805
}
C 33600 48600 1 90 0 resistor-1.sym
{
T 33200 48900 5 10 0 0 90 0 1
device=RESISTOR
T 32900 49300 5 10 1 1 0 0 1
refdes=R7
T 32900 49100 5 10 1 1 0 0 1
value=100k
T 32900 48900 5 10 1 1 0 0 1
footprint=0805
}
C 38800 50400 1 90 0 resistor-1.sym
{
T 38400 50700 5 10 0 0 90 0 1
device=RESISTOR
T 38100 51100 5 10 1 1 0 0 1
refdes=R5
T 38100 50700 5 10 1 1 0 0 1
footprint=0805
T 38100 50900 5 10 1 1 0 0 1
value=68k
}
C 38800 49100 1 90 0 resistor-1.sym
{
T 38400 49400 5 10 0 0 90 0 1
device=RESISTOR
T 38100 49800 5 10 1 1 0 0 1
refdes=R6
T 38100 49600 5 10 1 1 0 0 1
value=12k
T 38100 49400 5 10 1 1 0 0 1
footprint=0805
}
N 34600 51100 34600 51300 4
N 34600 52200 34600 52400 4
N 33400 53500 34800 53500 4
N 33600 53500 33600 53300 4
N 34600 53500 34600 53300 4
N 33500 49500 33500 49700 4
N 33500 49700 33700 49700 4
C 33500 50800 1 0 0 gnd-1.sym
N 33600 51100 33600 51300 4
N 33600 52200 33600 52400 4
C 33400 48100 1 0 0 gnd-1.sym
N 33500 48400 33500 48600 4
N 35100 51100 35100 52300 4
N 35100 52300 35300 52300 4
N 35300 52300 35300 52900 4
N 35600 51100 35600 52100 4
N 35600 52100 35800 52100 4
N 35800 53500 38700 53500 4
N 36900 51600 36900 53500 4
N 36900 52100 36700 52100 4
N 36100 51100 36100 51600 4
N 36100 51600 36900 51600 4
N 37500 53500 37500 53300 4
N 38100 53500 38100 53300 4
C 37400 51900 1 0 0 gnd-1.sym
C 38000 51900 1 0 0 gnd-1.sym
C 37100 48100 1 0 0 gnd-1.sym
N 37200 48400 37200 48600 4
N 37500 52200 37500 52400 4
N 38100 52200 38100 52400 4
N 37000 49700 37200 49700 4
N 38700 53500 38700 51300 4
N 37000 50200 38700 50200 4
N 38700 50000 38700 50400 4
C 38600 48600 1 0 0 gnd-1.sym
N 38700 48900 38700 49100 4
C 33700 49100 1 0 0 SR086.sym
{
T 34100 50800 5 10 1 1 0 0 1
refdes=U2
T 36200 49300 5 10 1 1 0 0 1
footprint=SO8
T 34100 49300 5 10 1 1 0 0 1
device=SR086
}
C 35800 52900 1 90 0 IGBT_DPAK.sym
{
T 35300 53800 5 10 0 0 90 0 1
device=NPN_TRANSISTOR
T 33000 54400 5 10 0 0 90 0 1
device=NPN_TRANSISTOR_IGBT
T 34700 53700 5 10 1 1 0 0 1
refdes=Q1
T 35500 53700 5 10 1 1 0 0 1
device=STGD5NB120SZ
T 35700 53100 5 10 1 1 0 0 1
footprint=DPAK
}
C 43200 50000 1 0 0 RFD22301.sym
{
T 45600 54500 5 10 1 1 0 0 1
refdes=U4
T 43800 50500 5 10 1 1 0 0 1
device=RFD22301
T 43800 50200 5 10 1 1 0 0 1
footprint=RFD22301
}
C 33500 56400 1 90 1 triac-1.sym
{
T 32600 56100 5 10 0 0 270 2 1
device=TRIAC
T 33300 56200 5 10 1 1 0 0 1
refdes=SCR1
T 33300 55500 5 10 1 1 0 0 1
footprint=D2PAK
}
C 29700 55800 1 0 0 FODM3053V.sym
{
T 30495 56900 5 10 1 1 0 0 1
device=FODM3053V
T 30095 56900 5 10 1 1 0 0 1
refdes=U5
T 30095 55800 5 10 1 1 0 0 1
footprint=MFP4
}
C 32100 56500 1 0 0 resistor-1.sym
{
T 32400 56900 5 10 0 0 0 0 1
device=RESISTOR
T 32000 56700 5 10 1 1 0 0 1
refdes=R9
T 32300 56800 5 10 1 1 0 0 1
footprint=0805
}
N 31900 56600 32100 56600 4
N 33200 56400 33200 57200 4
N 33200 56600 33000 56600 4
N 32800 55700 32400 55700 4
N 32400 55700 32400 56200 4
N 32400 56200 31900 56200 4
C 29400 55700 1 0 0 gnd-1.sym
N 29500 56200 29700 56200 4
C 46300 49800 1 0 0 gnd-1.sym
N 46400 50100 46400 50600 4
N 46400 50600 46200 50600 4
N 46200 50200 46400 50200 4
C 42800 51500 1 270 0 gnd-1.sym
N 43100 51400 43200 51400 4
C 42500 54300 1 270 0 gnd-1.sym
N 42800 54200 43200 54200 4
N 43000 54200 43000 53800 4
N 43000 53800 43200 53800 4
C 46900 54300 1 90 1 gnd-1.sym
N 46600 54200 46200 54200 4
N 46400 54200 46400 53800 4
N 46400 53800 46200 53800 4
C 46600 51500 1 90 1 gnd-1.sym
N 46300 51400 46200 51400 4
N 46200 51800 47000 51800 4
C 47200 51300 1 0 1 gnd-1.sym
N 46200 53400 47300 53400 4
N 46200 53000 47300 53000 4
N 47300 52200 47000 52200 4
C 47300 51400 1 0 0 connector5-2.sym
{
T 48000 53900 5 10 1 1 0 6 1
refdes=PROG
T 47600 53850 5 10 0 0 0 0 1
device=CONNECTOR_5
T 47600 54050 5 10 0 0 0 0 1
footprint=GSIP5
}
N 46200 52200 46400 52200 4
N 46400 52200 46400 52600 4
N 46400 52600 47300 52600 4
N 47100 51600 47100 51800 4
N 47300 51800 47100 51800 4
C 42700 55800 1 0 1 connector2-2.sym
{
T 42000 57100 5 10 1 1 0 0 1
refdes=SWITCH
T 42400 57050 5 10 0 0 0 6 1
device=CONNECTOR_2
T 42000 55550 5 10 1 1 0 0 1
footprint=TERM_2_5MM
}
N 33200 55300 33300 55300 4
{
T 33600 55200 5 10 1 1 0 0 1
netname=HotOut
}
N 33200 55300 33200 55500 4
N 33000 57200 33200 57200 4
{
T 32700 57100 5 10 1 1 0 6 1
netname=HotIn
}
C 43100 56100 1 90 0 gnd-1.sym
N 42800 56200 42700 56200 4
N 43100 52200 43200 52200 4
{
T 42800 52100 5 10 1 1 0 6 1
netname=SCL
}
N 28400 56600 28600 56600 4
{
T 28100 56500 5 10 1 1 0 6 1
netname=SCRCntl
}
C 47100 50700 1 90 0 capacitor-1.sym
{
T 46400 50900 5 10 0 0 90 0 1
device=CAPACITOR
T 47000 50900 5 10 1 1 0 0 1
refdes=C5
T 46200 50900 5 10 0 0 90 0 1
symversion=0.1
T 47000 50700 5 10 1 1 0 0 1
footprint=0805
}
C 47000 50200 1 0 1 gnd-1.sym
N 46900 50500 46900 50700 4
N 46900 51600 46900 51800 4
C 35300 48600 1 0 0 gnd-1.sym
N 35400 48900 35400 49100 4
N 29500 56000 29500 56200 4
C 29500 56500 1 0 1 resistor-1.sym
{
T 29200 56900 5 10 0 0 0 6 1
device=RESISTOR
T 28800 56700 5 10 1 1 0 6 1
refdes=R8
T 28900 56800 5 10 1 1 0 0 1
footprint=0805
T 29400 56700 5 10 1 1 0 0 1
value=220
}
N 29500 56600 29700 56600 4
N 38900 56200 38800 56200 4
{
T 39200 56100 5 10 1 1 0 0 1
netname=Neutral
}
C 38900 56200 1 270 1 busripper-2.sym
{
T 39300 56200 5 8 0 0 90 2 1
device=none
}
N 38900 56600 38800 56600 4
{
T 39200 56500 5 10 1 1 0 0 1
netname=HotIn
}
C 38900 56600 1 270 1 busripper-2.sym
{
T 39300 56600 5 8 0 0 90 2 1
device=none
}
C 31500 52700 1 90 0 busripper-2.sym
{
T 31100 52700 5 8 0 0 90 0 1
device=none
}
C 30400 54000 1 90 0 busripper-2.sym
{
T 30000 54000 5 8 0 0 90 0 1
device=none
}
C 33000 57200 1 90 0 busripper-2.sym
{
T 32600 57200 5 8 0 0 90 0 1
device=none
}
C 40800 55800 1 0 1 connector2-2.sym
{
T 40500 57050 5 10 0 0 0 6 1
device=CONNECTOR_2
T 40100 57100 5 10 1 1 0 0 1
refdes=ACOUT
T 40100 55550 5 10 1 1 0 0 1
footprint=TERM_2_5MM
}
N 40900 56200 40800 56200 4
{
T 41200 56100 5 10 1 1 0 0 1
netname=Neutral
}
C 40900 56200 1 270 1 busripper-2.sym
{
T 41300 56200 5 8 0 0 90 2 1
device=none
}
N 40900 56600 40800 56600 4
{
T 41200 56500 5 10 1 1 0 0 1
netname=HotOut
}
C 40900 56600 1 270 1 busripper-2.sym
{
T 41300 56600 5 8 0 0 90 2 1
device=none
}
C 33300 55300 1 270 1 busripper-2.sym
{
T 33700 55300 5 8 0 0 90 2 1
device=none
}
C 28400 56600 1 90 0 busripper-2.sym
{
T 28000 56600 5 8 0 0 90 0 1
device=none
}
N 43000 53400 43200 53400 4
{
T 42700 53300 5 10 1 1 0 6 1
netname=SCRCntl
}
C 43000 53400 1 90 0 busripper-2.sym
{
T 42600 53400 5 8 0 0 90 0 1
device=none
}
C 37000 49800 1 0 0 3.3V-plus-1.sym
N 37200 49500 37200 49800 4
N 47000 51800 47000 52200 4
C 34800 55400 1 0 0 MB85RC04V.sym
{
T 35200 57300 5 10 1 1 0 0 1
refdes=U3
T 35900 57300 5 10 1 1 0 0 1
footprint=SO8
T 35200 55400 5 10 1 1 0 0 1
device=MV85RC04V
}
N 34700 55800 34700 57100 4
N 34700 55800 34800 55800 4
N 36800 57100 36800 57000 4
N 36800 57000 36700 57000 4
N 36700 56600 36800 56600 4
N 34700 57000 34800 57000 4
N 34700 56600 34800 56600 4
N 34700 56200 34800 56200 4
C 36600 57100 1 0 0 3.3V-plus-1.sym
N 36700 56200 36800 56200 4
{
T 37100 56100 5 10 1 1 0 0 1
netname=SCL
}
C 36800 56200 1 270 1 busripper-2.sym
{
T 37200 56200 5 8 0 0 90 2 1
device=none
}
N 36700 55800 36800 55800 4
{
T 37100 55700 5 10 1 1 0 0 1
netname=SDA
}
C 36800 55800 1 270 1 busripper-2.sym
{
T 37200 55800 5 8 0 0 90 2 1
device=none
}
C 37100 56500 1 90 0 gnd-1.sym
C 43100 52200 1 90 0 busripper-2.sym
{
T 42700 52200 5 8 0 0 90 0 1
device=none
}
N 43100 51800 43200 51800 4
{
T 42800 51700 5 10 1 1 0 6 1
netname=SDA
}
C 43100 51800 1 90 0 busripper-2.sym
{
T 42700 51800 5 8 0 0 90 0 1
device=none
}
N 43100 53000 43200 53000 4
{
T 42800 52900 5 10 1 1 0 6 1
netname=Switch
}
C 43100 53000 1 90 0 busripper-2.sym
{
T 42700 53000 5 8 0 0 90 0 1
device=none
}
N 42800 56600 42700 56600 4
{
T 43100 56500 5 10 1 1 0 0 1
netname=Switch
}
C 42800 56600 1 270 1 busripper-2.sym
{
T 43200 56600 5 8 0 0 90 2 1
device=none
}
B 27100 55000 7300 2600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 27200 55100 9 10 1 0 0 0 1
AC Control
B 27100 47900 14600 7100 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 27200 48000 9 10 1 0 0 0 1
3.3V Regulator
T 34500 55100 9 10 1 0 0 0 1
FRAM
B 34400 55000 3200 2600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
B 37600 55000 6400 2600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 37700 55100 9 10 1 0 0 0 1
Connectors
B 41700 49500 7200 5500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 41800 49600 9 10 1 0 0 0 1
BLE Radio
B 41700 47900 7200 1600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 43700 49000 9 24 1 0 0 0 1
BLE AC Control
T 44800 48700 9 10 1 0 0 0 1
Dimmer
T 41800 48000 9 10 1 0 0 0 1
Revision 1
T 48800 48000 9 10 1 0 0 6 1
Dr. Yerzinia
C 46500 52000 1 0 0 3.3V-plus-1.sym
N 46700 52000 46700 51800 4
C 45600 56800 1 90 0 busripper-2.sym
{
T 45200 56800 5 8 0 0 90 0 1
device=none
}
N 45600 56800 45700 56800 4
{
T 45300 56800 5 10 1 1 0 6 1
netname=Detect
}
C 44700 56300 1 0 0 resistor-1.sym
{
T 45000 56700 5 10 0 0 0 0 1
device=RESISTOR
T 44500 56500 5 10 1 1 0 0 1
refdes=R10
}
N 45600 56400 45700 56400 4
C 44300 56500 1 270 0 gnd-1.sym
N 44600 56400 44700 56400 4
C 47800 55900 1 90 0 gnd-1.sym
N 47400 56000 47500 56000 4
C 47500 56400 1 270 1 busripper-2.sym
{
T 47900 56400 5 8 0 0 90 2 1
device=none
}
N 47500 56400 47400 56400 4
{
T 47800 56300 5 10 1 1 0 0 1
netname=DetectLV
}
B 44000 55000 4900 2600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 44100 55100 9 10 1 0 0 0 1
Optoisolator Zero Crossing Detection
N 43100 52600 43200 52600 4
{
T 42800 52600 5 10 1 1 0 6 1
netname=DetectLV
}
C 43100 52600 1 90 0 busripper-2.sym
{
T 42700 52600 5 8 0 0 90 0 1
device=none
}
C 34300 53600 1 0 0 busripper-2.sym
{
T 34300 54000 5 8 0 0 0 0 1
device=none
}
N 34300 53600 34300 53500 4
{
T 34300 53900 5 10 1 1 270 6 1
netname=Detect
}
C 45700 55600 1 0 0 LDA100S.sym
{
T 46100 57100 5 10 1 1 0 0 1
refdes=U6
T 46100 55600 5 10 1 1 0 0 1
device=LDA100S
T 47000 57100 5 10 1 1 0 6 1
footprint=SMD6
}
C 34800 57400 1 180 0 gnd-1.sym