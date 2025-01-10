** half adder used in booth array
** use CPL logic, rvt

.subckt HalfAdder_1 A A_bar B B_bar Sum_out Sum_out_bar Carry_out Carry_out_bar W=120n L=40n f=1

** define dependencies
.include ./Inv.sp
.include ./ND_2.sp
.include ./XR.sp

X_XR A A_bar B B_bar Sum_out Sum_out_bar XR W=W L=L f=f

X_And A B Carry_out_bar ND_2 W=W L=L f=f

X_Inv Carry_out_bar Carry_out Inv W=W L=L f=f

.ends HalfAdder_1