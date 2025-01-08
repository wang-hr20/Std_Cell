** cmos nand gate

.subckt AN_hvt_2 A B out W=120n L=40n f=1
X_Mp1 out A vdd! vdd! phvt11ll_ckt W='W*2*f' L=L
X_Mp2 out B vdd! vdd! phvt11ll_ckt W='W*2*f' L=L
X_Mn1 out A tmp  gnd! nhvt11ll_ckt W='W*2*f' L=L
X_Mn2 tmp B gnd! gnd! nhvt11ll_ckt W='W*2*f' L=L
.ends AN_hvt_2