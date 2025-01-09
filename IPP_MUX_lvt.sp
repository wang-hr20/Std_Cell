** IPP-MUX module in array, lvt
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b

.subckt IPP_MUX_lvt X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 IPP PP W=120n L=40n f=1

** define dependencies
.include ./PP_MUX_lvt.sp

** PP_MUX module 
X_PP_MUX X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 PP IPP PP_MUX_lvt W=W L=L f=f

.ends IPP_MUX_lvt