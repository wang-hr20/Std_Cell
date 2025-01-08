.subckt TranGate_lvt in out gateN gateP W=120n L=40n f=1
X_Mp out gateP in vdd! plvt11ll_ckt W='W*2*f' L=L
X_Mn out gateN in gnd! nlvt11ll_ckt W='W*f'   L=L
.ends TranGate_lvt