** ADD module in array
** slct 0 ~ 4 : -1X, -2X, 0X, 1X, 2X
** mos d g s b

.subckt ADD slct_m1 slct_m2 slct_0 slct_p1 slct_p2 out W=120n L=40n f=1

** define dependencies
.include ./Inv_hvt.sp

X_Mn_m1 m slct_m1 gnd! gnd! nhvt11ll_ckt W='W*f'   L=L
X_Mn_m2 m slct_m2 gnd! gnd! nhvt11ll_ckt W='W*f'   L=L
X_Mn_0  m slct_0  vdd! gnd! nhvt11ll_ckt W='W*f'   L=L
X_Mn_p1 m slct_p1 vdd! gnd! nhvt11ll_ckt W='W*f'   L=L
X_Mn_p2 m slct_p2 vdd! gnd! nhvt11ll_ckt W='W*f'   L=L

** output inverter
X_I3    m out               Inv_hvt      W=W    L=L f=f

X_Mp    m out     vdd! vdd! phvt11ll_ckt W='W*2*f' L=L

.ends ADD 