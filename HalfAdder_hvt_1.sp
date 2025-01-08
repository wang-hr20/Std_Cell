** half adder used in booth array
** use CPL logic, hvt

.subckt HalfAdder_hvt_1 Sum_out Sum_out_bar Carry_out Carry_out_bar A A_bar B B_bar W=120n L=40n f=1

** define dependencies
.include ./Inv_hvt.sp
.include ./ND_hvt_2.sp
.include ./XR_hvt.sp

X_XR A A_bar B B_bar Carry_out Carry_out_bar XR_hvt W=W L=L f=f

X_And A B Sum_out_bar ND_hvt_2 W=W L=L f=f

X_Inv Sum_out_bar Sum_out Inv_hvt W=W L=L f=f

.ends HalfAdder_hvt_1