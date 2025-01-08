** half adder used in booth array
** use CPL logic, hvt

.subckt HalfAdder_hvt_1 Sum_out Sum_out_bar Carry_out Carry_out_bar A A_bar B B_bar W=120n L=40n f=1

** define dependencies
.include ./Inv_hvt.sp
.include ./TranGate_hvt.sp



.ends HalfAdder_hvt_1