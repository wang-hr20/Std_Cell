.subckt TranGate in out gateN gateP Wmin=120n Lmin=40n f=1
X_Mp out gateP in vdd! p11ll_ckt W='Wmin*2*f' L=Lmin
X_Mn out gateN in gnd! n11ll_ckt W='Wmin*f'   L=Lmin
.ends TranGate