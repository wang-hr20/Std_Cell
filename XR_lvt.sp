.subckt XR_lvt A A_bar B B_bar out out_bar W=120n L=40n f=1
** CPL logic, XOR gate, lvt
.include ./Inv_lvt.sp
.include ./TranGate_lvt.sp

XG_1 A P B_bar B TranGate_lvt f=f
XG_2 A_bar P_bar B_bar B TranGate_lvt f=f
XG_3 A_bar P B B_bar TranGate_lvt f=f
XG_4 A P_bar B B_bar TranGate_lvt f=f

X_inv1 P out_bar Inv_lvt f=f
X_inv2 P_bar out Inv_lvt f=f

.ends XR_lvt