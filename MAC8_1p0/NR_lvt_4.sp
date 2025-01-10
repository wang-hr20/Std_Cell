.subckt NR_lvt_4 A B C D out W=120n L=40n f=1
X_Mp1 out  A tmp1 vdd! plvt11ll_ckt W='W*8*f' L=L
X_Mp2 tmp1 B tmp2 vdd! plvt11ll_ckt W='W*8*f' L=L
X_Mp3 tmp2 C tmp3 vdd! plvt11ll_ckt W='W*8*f' L=L
X_Mp4 tmp3 D vdd! vdd! plvt11ll_ckt W='W*8*f' L=L
X_Mn1 out A gnd! gnd! nlvt11ll_ckt W='W*f' L=L
X_Mn2 out B gnd! gnd! nlvt11ll_ckt W='W*f' L=L
X_Mn3 out C gnd! gnd! nlvt11ll_ckt W='W*f' L=L
X_Mn4 out D gnd! gnd! nlvt11ll_ckt W='W*f' L=L
.ends NR_lvt_4
