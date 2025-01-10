.subckt Inv_nlph in out W=120n L=40n f=1
X_Mp out in vdd! vdd! phvt11ll_ckt W='W*f'  L=L
X_Mn out in gnd! gnd! nlvt11ll_ckt W='W*f'  L=L
.ends Inv_nlph
