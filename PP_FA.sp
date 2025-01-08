** PP_FA module in array
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b
** use PP_MUX and FA

.subckt PP_FA Sum_out Sum_out_bar Carry_out Carry_out_bar Sum_in Sum_in_bar Carry_in Carry_in_bar X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 Wmin=120n Lmin=40n f=1

** define dependencies
.include ./PP_MUX.sp
.include ./FullAdder_hvt_1.sp

** PP_MUX module
X_PP_MUX PP X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 PP_MUX Wmin=Wmin Lmin=Lmin f=f

** PP inverter
X_Inv_PP PP IPP Inv_hvt Wmin=Wmin Lmin=Lmin f=f

** FA module
X_FA PP IPP Sum_in Sum_in_bar Carry_in Carry_in_bar Sum_out Sum_out_bar Carry_out Carry_out_bar FullAdder_hvt_1 Wmin=Wmin Lmin=Lmin f=f

.ends PP_FA