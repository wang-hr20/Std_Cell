** And gate in transgate logic, hvt

.subckt And_hvt A B B_bar out W=120n L=40n f=1

** define dependencies
.include ./TranGate_hvt.sp

** TranGate_hvt
XG_1 gnd! out B_bar B TranGate_hvt W=W L=L f=f
XG_2 A out B B_bar TranGate_hvt W=W L=L f=f

.ends And_hvt