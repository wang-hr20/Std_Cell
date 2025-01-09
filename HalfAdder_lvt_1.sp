** half adder used in booth array
** use CPL logic, lvt

.subckt HalfAdder_lvt_1 A A_bar B B_bar Sum_out Sum_out_bar Carry_out Carry_out_bar W=120n L=40n f=1

** define dependencies
.include ./Inv_lvt.sp
.include ./ND_lvt_2.sp
.include ./XR_lvt.sp

X_XR A A_bar B B_bar Carry_out Carry_out_bar XR_lvt W=W L=L f=f

X_And A B Sum_out_bar ND_lvt_2 W=W L=L f=f

X_Inv Sum_out_bar Sum_out Inv_lvt W=W L=L f=f

.ends HalfAdder_lvt_1