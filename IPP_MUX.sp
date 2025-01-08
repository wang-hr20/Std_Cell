IPP_MUXWmin** IPP-MUX module in array
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b
.subckt IPP_MUX IPP X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 W=120n L=40n f=1
X_PP_MUX PP X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 W=W L=L f=f
X_Inv PP IPP W=W L=L f=f
.ends IPP_MUX