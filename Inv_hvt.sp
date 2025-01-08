.subckt Inv_hvt in out Wmin=120n Lmin=40n f=1
X_Mp out in vdd! vdd! phvt11ll_ckt W='Wmin*2*f' L=Lmin
X_Mn out in gnd! gnd! nhvt11ll_ckt W='Wmin*f'   L=Lmin
.ends Inv_hvt
