.subckt ND_lvt_3 A B C out W=120n L=40n f=1
X_Mp1 out A vdd! vdd! plvt11ll_ckt W='W*2*f' L=L
X_Mp2 out B vdd! vdd! plvt11ll_ckt W='W*2*f' L=L
X_Mp3 out C vdd! vdd! plvt11ll_ckt W='W*2*f' L=L
X_Mn1 out  A tmp1 gnd! nlvt11ll_ckt W='W*3*f' L=L
X_Mn2 tmp1 B tmp2 gnd! nlvt11ll_ckt W='W*3*f' L=L
X_Mn3 tmp2 C gnd! gnd! nlvt11ll_ckt W='W*3*f' L=L
.ends ND_lvt_3
