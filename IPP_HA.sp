** IPP_HA module in array
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b
** use IPP_MUX and HA

.subckt IPP_HA Sum_in Sum_in_bar X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 Sum_out Sum_out_bar Carry_out Carry_out_bar W=120n L=40n f=1

** define dependencies
.include ./IPP_MUX.sp
.include ./HalfAdder_hvt_1.sp

** IPP_MUX module
X_IPP_MUX X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 IPP PP IPP_MUX W=W L=L f=f

** FA module
X_HA IPP PP Sum_in Sum_in_bar Sum_out Sum_out_bar Carry_out Carry_out_bar HalfAdder_hvt_1 W=W L=L f=f

.ends IPP_HA
