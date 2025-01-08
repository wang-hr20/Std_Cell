** PP-MUX module in array
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b
.subckt PP_MUX PP X_i X_im1 slct_m1 slct_m2 slct_0 slct_p1 slct_p2 W=120n L=40n f=1
X_Mn_m1 m       slct_m1     X_i         gnd!    nhvt11ll_ckt    W='W*f'  L=L
X_Mn_m2 m       slct_m2     X_im1       gnd!    nhvt11ll_ckt    W='W*f'  L=L
X_I1    X_im1   X_im1_inv                       Inv_hvt         W=W   L=L   f=f
X_I2    X_i     X_i_inv                         Inv_hvt         W=W   L=L   f=f
X_Mn_0  m       slct_0      vdd!        gnd!    nhvt11ll_ckt    W='W*f'  L=L
X_Mn_p1 m       slct_p1     X_i_inv     gnd!    nhvt11ll_ckt    W='W*f'  L=L
X_Mn_p2 m       slct_p2     X_im1_inv   gnd!    nhvt11ll_ckt    W='W*f'  L=L
X_I3    m       PP                              Inv_hvt         W=W   L=L   f=f
X_Mp    m       PP          vdd!        vdd!    phvt11ll_ckt    W='W*f'  L=L
.ends PP_MUX