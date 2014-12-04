v 20130925 2
C 29900 53400 1 0 0 bridge-2.sym
{
T 30100 54400 5 10 1 1 0 0 1
refdes=U1
T 30100 54600 5 10 0 0 0 0 1
device=BRIDGE
T 30100 54800 5 10 0 0 0 0 1
symversion=0.1
T 30100 54700 5 10 1 1 0 0 1
device=MDB8SFSCT
T 30500 54400 5 10 1 1 0 0 1
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
C 31600 54000 1 90 0 gnd-1.sym
N 31100 54100 31300 54100 4
C 28300 54100 1 0 0 fuse-1.sym
{
T 28500 54500 5 10 0 0 0 0 1
device=FUSE
T 28300 54200 5 10 1 1 0 0 1
refdes=F1
T 28500 54700 5 10 0 0 0 0 1
symversion=0.1
T 29100 54200 5 10 1 1 0 0 1
value=1A
T 28300 53800 5 10 1 1 0 0 1
footprint=FUSE_SST
}
C 29600 53000 1 90 0 varistor-1.sym
{
T 28800 53100 5 10 0 0 90 0 1
device=MOV
T 27950 53300 5 10 0 0 90 0 1
device=VARISTOR
T 28500 53300 5 10 1 1 0 0 1
refdes=V1
T 28500 53100 5 10 1 1 0 0 1
footprint=ACY200
}
N 28100 54100 28300 54100 4
{
T 27800 54000 5 10 1 1 0 6 1
netname=HotIn
}
N 29200 54100 29900 54100 4
N 29400 54100 29400 53900 4
N 29200 52800 29700 52800 4
{
T 28900 52700 5 10 1 1 0 6 1
netname=Neutral
}
N 29400 52800 29400 53000 4
N 29700 52800 29700 53600 4
N 29700 53600 29900 53600 4
C 35100 48700 1 90 0 capacitor-1.sym
{
T 34400 48900 5 10 0 0 90 0 1
device=CAPACITOR
T 34300 49100 5 10 1 1 0 0 1
refdes=C4
T 34200 48900 5 10 0 0 90 0 1
symversion=0.1
T 34300 48900 5 10 1 1 0 0 1
value=100nF
T 34300 48700 5 10 1 1 0 0 1
footprint=0805
}
C 35400 52500 1 90 0 capacitor-1.sym
{
T 34700 52700 5 10 0 0 90 0 1
device=CAPACITOR
T 34700 52800 5 10 1 1 0 0 1
refdes=C2
T 34500 52700 5 10 0 0 90 0 1
symversion=0.1
T 34700 52600 5 10 1 1 0 0 1
value=1uF
T 34700 52400 5 10 1 1 0 0 1
footprint=0805
}
C 33500 52000 1 0 0 capacitor-1.sym
{
T 33700 52700 5 10 0 0 0 0 1
device=CAPACITOR
T 33600 52300 5 10 1 1 0 0 1
refdes=C1
T 33700 52900 5 10 0 0 0 0 1
symversion=0.1
T 34100 52300 5 10 1 1 0 0 1
value=100nF
T 34100 51900 5 10 1 1 0 0 1
footprint=0805
}
C 35600 53400 1 270 0 capacitor-2.sym
{
T 36300 53200 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 35500 53100 5 10 1 1 0 0 1
refdes=C3
T 36500 53200 5 10 0 0 270 0 1
symversion=0.1
T 35700 52300 5 10 1 1 90 0 1
value=470uF
T 36200 52200 5 10 1 1 90 0 1
footprint=FCAPEL
}
C 31400 52500 1 90 0 resistor-1.sym
{
T 31000 52800 5 10 0 0 90 0 1
device=RESISTOR
T 30700 53100 5 10 1 1 0 0 1
refdes=R1
T 30700 52900 5 10 1 1 0 0 1
value=200k
T 30700 52700 5 10 1 1 0 0 1
footprint=0805
}
C 31400 51400 1 90 0 resistor-1.sym
{
T 31000 51700 5 10 0 0 90 0 1
device=RESISTOR
T 30700 52100 5 10 1 1 0 0 1
refdes=R2
T 30700 51900 5 10 1 1 0 0 1
value=200k
T 30700 51700 5 10 1 1 0 0 1
footprint=0805
}
C 32400 51400 1 90 0 resistor-1.sym
{
T 32000 51700 5 10 0 0 90 0 1
device=RESISTOR
T 31700 52000 5 10 1 1 0 0 1
refdes=R4
T 31700 51800 5 10 1 1 0 0 1
value=510k
T 31700 51600 5 10 1 1 0 0 1
footprint=0805
}
C 32400 52500 1 90 0 resistor-1.sym
{
T 32000 52800 5 10 0 0 90 0 1
device=RESISTOR
T 31700 53100 5 10 1 1 0 0 1
refdes=R3
T 31700 52900 5 10 1 1 0 0 1
value=510k
T 31700 52700 5 10 1 1 0 0 1
footprint=0805
}
C 31300 48700 1 90 0 resistor-1.sym
{
T 30900 49000 5 10 0 0 90 0 1
device=RESISTOR
T 30600 49400 5 10 1 1 0 0 1
refdes=R7
T 30600 49200 5 10 1 1 0 0 1
value=100k
T 30600 49000 5 10 1 1 0 0 1
footprint=0805
}
C 36500 50500 1 90 0 resistor-1.sym
{
T 36100 50800 5 10 0 0 90 0 1
device=RESISTOR
T 35800 51200 5 10 1 1 0 0 1
refdes=R5
T 35800 50800 5 10 1 1 0 0 1
footprint=0805
T 35800 51000 5 10 1 1 0 0 1
value=68k
}
C 36500 49200 1 90 0 resistor-1.sym
{
T 36100 49500 5 10 0 0 90 0 1
device=RESISTOR
T 35800 49900 5 10 1 1 0 0 1
refdes=R6
T 35800 49700 5 10 1 1 0 0 1
value=12k
T 35800 49500 5 10 1 1 0 0 1
footprint=0805
}
N 32300 51200 32300 51400 4
N 32300 52300 32300 52500 4
N 31100 53600 32500 53600 4
N 31300 53600 31300 53400 4
N 32300 53600 32300 53400 4
N 31200 49600 31200 49800 4
N 31200 49800 31400 49800 4
C 31200 50900 1 0 0 gnd-1.sym
N 31300 51200 31300 51400 4
N 31300 52300 31300 52500 4
C 31100 48200 1 0 0 gnd-1.sym
N 31200 48500 31200 48700 4
N 32800 51200 32800 52400 4
N 32800 52400 33000 52400 4
N 33000 52400 33000 53000 4
N 33300 51200 33300 52200 4
N 33300 52200 33500 52200 4
N 33500 53600 36400 53600 4
N 34600 51700 34600 53600 4
N 34600 52200 34400 52200 4
N 33800 51200 33800 51700 4
N 33800 51700 34600 51700 4
N 35200 53600 35200 53400 4
N 35800 53600 35800 53400 4
C 35100 52000 1 0 0 gnd-1.sym
C 35700 52000 1 0 0 gnd-1.sym
C 34800 48200 1 0 0 gnd-1.sym
N 34900 48500 34900 48700 4
N 35200 52300 35200 52500 4
N 35800 52300 35800 52500 4
N 34700 49800 34900 49800 4
N 36400 53600 36400 51400 4
N 34700 50300 36400 50300 4
N 36400 50100 36400 50500 4
C 36300 48700 1 0 0 gnd-1.sym
N 36400 49000 36400 49200 4
C 31400 49200 1 0 0 SR086.sym
{
T 31800 50900 5 10 1 1 0 0 1
refdes=U2
T 33900 49400 5 10 1 1 0 0 1
footprint=SO8
T 31800 49400 5 10 1 1 0 0 1
device=SR086
}
C 33500 53000 1 90 0 IGBT_DPAK.sym
{
T 33000 53900 5 10 0 0 90 0 1
device=NPN_TRANSISTOR
T 30700 54500 5 10 0 0 90 0 1
device=NPN_TRANSISTOR_IGBT
T 32400 53800 5 10 1 1 0 0 1
refdes=Q1
T 33200 53800 5 10 1 1 0 0 1
device=STGD5NB120SZ
T 33400 53200 5 10 1 1 0 0 1
footprint=DPAK
}
C 38300 50000 1 0 0 RFD22301.sym
{
T 40700 54500 5 10 1 1 0 0 1
refdes=U4
T 38900 50500 5 10 1 1 0 0 1
device=RFD22301
T 38900 50200 5 10 1 1 0 0 1
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
C 41400 49700 1 0 0 gnd-1.sym
N 41500 50000 41500 50600 4
N 41500 50600 41300 50600 4
N 41300 50200 41500 50200 4
C 38000 50900 1 0 0 gnd-1.sym
N 38100 51200 38100 51400 4
N 38100 51400 38300 51400 4
C 37800 53700 1 0 0 gnd-1.sym
N 37900 54000 37900 54200 4
N 37900 54200 38300 54200 4
N 38100 54200 38100 53800 4
N 38100 53800 38300 53800 4
C 42000 53700 1 0 1 gnd-1.sym
N 41900 54000 41900 54200 4
N 41900 54200 41300 54200 4
N 41500 54200 41500 53800 4
N 41500 53800 41300 53800 4
C 41700 50800 1 0 1 gnd-1.sym
N 41600 51100 41600 51400 4
N 41600 51400 41300 51400 4
N 41300 51800 42100 51800 4
C 42300 51300 1 0 1 gnd-1.sym
N 41300 53400 42400 53400 4
N 41300 53000 42400 53000 4
N 42400 52200 42100 52200 4
C 42400 51400 1 0 0 connector5-2.sym
{
T 43100 53900 5 10 1 1 0 6 1
refdes=PROG
T 42700 53850 5 10 0 0 0 0 1
device=CONNECTOR_5
T 42700 54050 5 10 0 0 0 0 1
footprint=GSIP5
}
N 41300 52200 41500 52200 4
N 41500 52200 41500 52600 4
N 41500 52600 42400 52600 4
N 42200 51600 42200 51800 4
N 42400 51800 42200 51800 4
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
N 38200 52200 38300 52200 4
{
T 37900 52100 5 10 1 1 0 6 1
netname=SCL
}
N 28400 56600 28600 56600 4
{
T 28100 56500 5 10 1 1 0 6 1
netname=SwitchCntl
}
C 42200 50700 1 90 0 capacitor-1.sym
{
T 41500 50900 5 10 0 0 90 0 1
device=CAPACITOR
T 42100 50900 5 10 1 1 0 0 1
refdes=C5
T 41300 50900 5 10 0 0 90 0 1
symversion=0.1
T 42100 50700 5 10 1 1 0 0 1
footprint=0805
}
C 42100 50200 1 0 1 gnd-1.sym
N 42000 50500 42000 50700 4
N 42000 51600 42000 51800 4
C 33000 48700 1 0 0 gnd-1.sym
N 33100 49000 33100 49200 4
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
C 29200 52800 1 90 0 busripper-2.sym
{
T 28800 52800 5 8 0 0 90 0 1
device=none
}
C 28100 54100 1 90 0 busripper-2.sym
{
T 27700 54100 5 8 0 0 90 0 1
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
N 38100 53400 38300 53400 4
{
T 37800 53300 5 10 1 1 0 6 1
netname=SwitchCntl
}
C 38100 53400 1 90 0 busripper-2.sym
{
T 37700 53400 5 8 0 0 90 0 1
device=none
}
C 34700 49900 1 0 0 3.3V-plus-1.sym
N 34900 49600 34900 49900 4
N 42100 51800 42100 52200 4
C 34800 55400 1 0 0 MB85RC04V.sym
{
T 35200 57300 5 10 1 1 0 0 1
refdes=U3
T 35900 57300 5 10 1 1 0 0 1
footprint=SO8
T 35200 55400 5 10 1 1 0 0 1
device=MV85RC04V
}
C 34600 55300 1 0 0 gnd-1.sym
N 34700 55600 34700 57000 4
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
C 38200 52200 1 90 0 busripper-2.sym
{
T 37800 52200 5 8 0 0 90 0 1
device=none
}
N 38200 51800 38300 51800 4
{
T 37900 51700 5 10 1 1 0 6 1
netname=SDA
}
C 38200 51800 1 90 0 busripper-2.sym
{
T 37800 51800 5 8 0 0 90 0 1
device=none
}
N 38200 53000 38300 53000 4
{
T 37900 52900 5 10 1 1 0 6 1
netname=SWITCH
}
C 38200 53000 1 90 0 busripper-2.sym
{
T 37800 53000 5 8 0 0 90 0 1
device=none
}
N 42800 56600 42700 56600 4
{
T 43100 56500 5 10 1 1 0 0 1
netname=SWITCH
}
C 42800 56600 1 270 1 busripper-2.sym
{
T 43200 56600 5 8 0 0 90 2 1
device=none
}
B 27100 55000 7300 2600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 27200 55100 9 10 1 0 0 0 1
AC Control
B 27100 47900 9700 7100 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 27200 48000 9 10 1 0 0 0 1
3.3V Regulator
T 34500 55100 9 10 1 0 0 0 1
FRAM
B 34400 55000 3200 2600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
B 37600 55000 6400 2600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 37700 55100 9 10 1 0 0 0 1
Connectors
B 36800 49500 7200 5500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 36900 49600 9 10 1 0 0 0 1
BLE Radio
B 36800 47900 7200 1600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 38800 49000 9 24 1 0 0 0 1
BLE AC Control
T 40000 48700 9 10 1 0 0 0 1
Basic
T 36900 48000 9 10 1 0 0 0 1
Revision 2
T 43900 48000 9 10 1 0 0 6 1
Dr. Yerzinia
C 41600 52000 1 0 0 3.3V-plus-1.sym
N 41800 52000 41800 51800 4