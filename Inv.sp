.subckt Inv in out Wmin=120n Lmin=40n f=1
X_Mp out in vdd! vdd! p11ll_ckt W='Wmin*2*f' L=Lmin
X_Mn out in gnd! gnd! n11ll_ckt W='Wmin*f'   L=Lmin
.ends Inv
