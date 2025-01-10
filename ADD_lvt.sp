** ADD_tg module in array
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b

.subckt ADD_lvt slct_m1 slct_m2 slct_0 slct_p1 slct_p2 out out_bar W=120n L=40n f=1

** define dependencies
.include ./Inv_nlph.sp
.include ./Inv_lvt.sp
.include ./TranGate_lvt.sp

** input inverters
X_Inv_m1    slct_m1 slct_m1_inv                     Inv_lvt         W=W   L=L   f=f
X_Inv_m2    slct_m2 slct_m2_inv                     Inv_lvt         W=W   L=L   f=f
X_Inv_0     slct_0  slct_0_inv                      Inv_lvt         W=W   L=L   f=f
X_Inv_p1    slct_p1 slct_p1_inv                     Inv_lvt         W=W   L=L   f=f
X_Inv_p2    slct_p2 slct_p2_inv                     Inv_lvt         W=W   L=L   f=f

** transmission gates

X_TG_m1   gnd!  m       slct_m1     slct_m1_inv     TranGate_lvt    W=W   L=L   f=f
X_TG_m2   gnd!  m       slct_m2     slct_m2_inv     TranGate_lvt    W=W   L=L   f=f
X_TG_0    vdd!  m       slct_0      slct_0_inv      TranGate_lvt    W=W   L=L   f=f
X_TG_p1   vdd!  m       slct_p1     slct_p1_inv     TranGate_lvt    W=W   L=L   f=f
X_TG_p2   vdd!  m       slct_p2     slct_p2_inv     TranGate_lvt    W=W   L=L   f=f

** output inverter

X_I3    m       out                 Inv_lvt      W=W    L=L f=f

X_I4    out     out_bar             Inv_lvt      W=W    L=L f='f*2'

.ends ADD_lvt