.subckt Inv in out W=120n L=40n f=1
X_Mp out in vdd! vdd! p11ll_ckt W='W*2*f' L=L
X_Mn out in gnd! gnd! n11ll_ckt W='W*f'   L=L
.ends Inv
