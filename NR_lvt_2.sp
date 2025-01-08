.subckt NR_lvt_2 A B out W=120n L=40n f=1
X_Mp1 out A tmp  vdd! plvt11ll_ckt W='W*4*f' L=L
X_Mp2 tmp B vdd! vdd! plvt11ll_ckt W='W*4*f' L=L
X_Mn1 out A gnd! gnd! nlvt11ll_ckt W='W*f' L=L
X_Mn2 out B gnd! gnd! nlvt11ll_ckt W='W*f'   L=L
.ends NR_lvt_2
