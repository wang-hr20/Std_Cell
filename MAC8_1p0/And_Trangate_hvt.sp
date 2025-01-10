** And gate in transgate logic, hvt
** Complementary transmission gates

.subckt And_hvt A A_bar B B_bar out out_bar W=120n L=40n f=1

** define dependencies
.include ./TranGate_hvt.sp

** TranGate_hvt
XG_1 gnd! P B_bar B TranGate_hvt W=W L=L f=f
XG_2 A P B B_bar TranGate_hvt W=W L=L f=f
XG_3 vdd! P_bar B B_bar TranGate_hvt W=W L=L f=f
XG_4 A_bar P_bar B_bar B TranGate_hvt W=W L=L f=f

** output inverters
X_Inv1 P out_bar Inv_hvt W=W L=L f=f
X_Inv2 P_bar out Inv_hvt W=W L=L f=f
.ends And_hvt