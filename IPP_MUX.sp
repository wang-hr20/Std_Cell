** IPP-MUX module in array
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b

.subckt IPP_MUX X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 IPP W=120n L=40n f=1

** define dependencies
.include ./PP_MUX.sp

** PP_MUX module 
X_PP_MUX PP X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 PP_MUX W=W L=L f=f

** output inverter
X_Inv_PP PP IPP Inv_hvt W=W L=L f=f

.ends IPP_MUX