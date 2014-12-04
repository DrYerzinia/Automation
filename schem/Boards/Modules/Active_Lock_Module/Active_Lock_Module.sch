v 20130925 2
B 32900 47900 3900 4400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 33000 48000 9 10 1 0 0 0 1
Connectors
B 36800 49500 7200 5500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 36900 49600 9 10 1 0 0 0 1
Controller
B 36800 47900 7200 1600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 39100 49000 9 24 1 0 0 0 1
Lock Control
T 39600 48700 9 10 1 0 0 0 1
Active Lock Module
T 36900 48000 9 10 1 0 0 0 1
Revision 1
T 43900 48000 9 10 1 0 0 6 1
Dr. Yerzinia
C 33900 49200 1 0 1 connector5-2.sym
{
T 33600 51650 5 10 0 0 180 2 1
device=CONNECTOR_5
T 33200 48950 5 10 1 1 180 8 1
footprint=GSIP5
T 33200 51700 5 10 1 1 180 8 1
refdes=IN
}
C 34400 49500 1 90 0 gnd-1.sym
N 34100 49600 33900 49600 4
C 33800 51300 1 0 0 3.3V-plus-1.sym
N 34000 51300 34000 51200 4
N 34000 51200 33900 51200 4
C 34100 50400 1 270 1 busripper-2.sym
{
T 34500 50400 5 8 0 0 90 2 1
device=none
}
C 34100 50000 1 270 1 busripper-2.sym
{
T 34500 50000 5 8 0 0 90 2 1
device=none
}
N 33900 50000 34100 50000 4
{
T 34400 49900 5 10 1 1 0 0 1
netname=SDA
}
N 33900 50400 34100 50400 4
{
T 34400 50300 5 10 1 1 0 0 1
netname=SCL
}
C 35800 49200 1 0 0 connector5-2.sym
{
T 36100 51650 5 10 0 0 180 8 1
device=CONNECTOR_5
T 36500 48950 5 10 1 1 180 2 1
footprint=GSIP5
T 36500 51700 5 10 1 1 180 2 1
refdes=OUT
}
C 35400 49500 1 270 1 gnd-1.sym
N 35700 49600 35800 49600 4
C 35900 51300 1 0 1 3.3V-plus-1.sym
N 35700 51300 35700 51200 4
N 35700 51200 35800 51200 4
C 35700 50400 1 90 0 busripper-2.sym
{
T 35300 50400 5 8 0 0 90 0 1
device=none
}
C 35700 50000 1 90 0 busripper-2.sym
{
T 35300 50000 5 8 0 0 90 0 1
device=none
}
N 35800 50000 35700 50000 4
{
T 35400 49900 5 10 1 1 0 6 1
netname=SDA
}
N 35800 50400 35700 50400 4
{
T 35400 50300 5 10 1 1 0 6 1
netname=SCL
}
N 33900 50800 35800 50800 4
C 34900 51100 1 0 0 busripper-2.sym
{
T 34900 51500 5 8 0 0 0 0 1
device=none
}
N 34900 50800 34900 51100 4
{
T 34800 51400 5 10 1 1 270 6 1
netname=SIgnal
}
C 37300 50700 1 0 0 DIP3.sym
{
T 38700 51775 5 8 0 0 0 0 1
device=SWITCH_DIP4
T 37600 51950 5 10 1 1 0 0 1
refdes=U5
T 37600 50500 5 10 1 1 0 0 1
footprint=CT2193LPST_3
}
C 39000 50500 1 0 0 PIC16LF1704_SO.sym
{
T 39400 53700 5 10 1 1 0 0 1
device=PIC16LF1703
T 41200 53700 5 10 1 1 0 0 1
refdes=U1
T 39400 50500 5 10 1 1 0 0 1
footprint=TSSOP14
}
C 41900 51700 1 270 1 busripper-2.sym
{
T 42300 51700 5 8 0 0 90 2 1
device=none
}
C 41900 51300 1 270 1 busripper-2.sym
{
T 42300 51300 5 8 0 0 90 2 1
device=none
}
N 41800 51300 41900 51300 4
{
T 42200 51200 5 10 1 1 0 0 1
netname=SDA
}
N 41800 51700 41900 51700 4
{
T 42200 51600 5 10 1 1 0 0 1
netname=SCL
}
C 38700 53500 1 0 0 3.3V-plus-1.sym
N 38600 53300 39000 53300 4
N 38900 53300 38900 53500 4
C 42200 53200 1 90 0 gnd-1.sym
N 41900 53300 41800 53300 4
C 42700 51300 1 0 0 connector5-2.sym
{
T 43000 53750 5 10 0 0 0 0 1
device=CONNECTOR_5
T 43400 51050 5 10 1 1 0 6 1
footprint=GSIP5
T 43400 53800 5 10 1 1 0 6 1
refdes=PROGPIC
}
C 42600 51300 1 0 0 gnd-1.sym
N 42700 51600 42700 51700 4
C 42500 53400 1 0 0 3.3V-plus-1.sym
N 42700 53300 42700 53400 4
N 42700 52900 41800 52900 4
N 41800 52500 42700 52500 4
N 39000 52100 38900 52100 4
N 38900 52100 38900 52400 4
N 38900 52400 42200 52400 4
N 42200 52400 42200 52100 4
N 42200 52100 42700 52100 4
C 37700 53100 1 0 0 capacitor-1.sym
{
T 37900 53800 5 10 0 0 0 0 1
device=CAPACITOR
T 37900 54000 5 10 0 0 0 0 1
symversion=0.1
T 37700 53400 5 10 1 1 0 0 1
refdes=C1
T 38300 53100 5 10 1 1 0 0 1
footprint=0805
T 38300 53400 5 10 1 1 0 0 1
value=100nF
}
C 37500 52900 1 0 0 gnd-1.sym
N 37600 53300 37700 53300 4
N 37600 53200 37600 53300 4
C 37100 50700 1 0 0 gnd-1.sym
N 37200 51000 37200 51700 4
N 37200 51700 37300 51700 4
N 37300 51400 37200 51400 4
N 37300 51100 37200 51100 4
N 38600 51700 39000 51700 4
N 38600 51400 38800 51400 4
N 38800 51400 38800 51300 4
N 38800 51300 39000 51300 4
N 38600 51100 38800 51100 4
N 38800 51100 38800 50900 4
N 38800 50900 39000 50900 4
