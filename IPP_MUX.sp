** IPP-MUX module in array
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b
.subckt IPP_MUX IPP X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 Wmin=120n Lmin=40n f=1
X_PP_MUX PP X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 Wmin=Wmin Lmin=Lmin f=f
X_Inv PP IPP Wmin=Wmin Lmin=Lmin f=f
.ends IPP_MUX