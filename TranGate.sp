.subckt TranGate in out gateN gateP W=120n L=40n f=1
X_Mp out gateP in vdd! p11ll_ckt W='W*2*f' L=L
X_Mn out gateN in gnd! n11ll_ckt W='W*f'   L=L
.ends TranGate