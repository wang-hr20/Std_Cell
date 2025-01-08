.subckt TranGate_lvt in out gateN gateP Wmin=120n Lmin=40n f=1
X_Mp out gateP in vdd! plvt11ll_ckt W='Wmin*2*f' L=Lmin
X_Mn out gateN in gnd! nlvt11ll_ckt W='Wmin*f'   L=Lmin
.ends TranGate_lvt