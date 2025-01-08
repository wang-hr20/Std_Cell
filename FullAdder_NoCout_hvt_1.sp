.subckt FullAdder_NoCout_hvt_1 A A_bar B B_bar Cin Cin_bar S S_bar W=120n L=40n f=1

** define dependencies
.include ./Inv_hvt.sp
.include ./TranGate_hvt.sp

** adder
XG_1 A P B_bar B TranGate_hvt W=W L=L f=f
XG_2 A_bar P_bar B_bar B TranGate_hvt W=W L=L f=f
XG_3 A_bar P B B_bar TranGate_hvt W=W L=L f=f
XG_4 A P_bar B B_bar TranGate_hvt W=W L=L f=f

XG_5 P S_inv Cin Cin_bar TranGate_hvt W=W L=L f=f
XG_6 P_bar S_bar_inv Cin Cin_bar TranGate_hvt W=W L=L f=f
XG_7 P_bar S_inv Cin_bar Cin TranGate_hvt W=W L=L f=f
XG_8 P S_bar_inv Cin_bar Cin TranGate_hvt W=W L=L f=f

X_inv1 S_inv S Inv_hvt W=W L=L f=f
X_inv2 S_bar_inv S_bar Inv_hvt W=W L=L f=f

.ends FullAdder_NoCout_hvt_1