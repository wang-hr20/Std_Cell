** cmos nand gate, rvt

.subckt ND_2 A B out W=120n L=40n f=1
X_Mp1 out A vdd! vdd! p11ll_ckt W='W*2*f' L=L
X_Mp2 out B vdd! vdd! p11ll_ckt W='W*2*f' L=L
X_Mn1 out A tmp  gnd! n11ll_ckt W='W*2*f' L=L
X_Mn2 tmp B gnd! gnd! n11ll_ckt W='W*2*f' L=L
.ends ND_2