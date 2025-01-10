** partial products' array of booth multiplier
** input  : one 8-bit unsigned integer x[7:0]
**          5 5-bit one-hot code slct[4:0][4:0]
** output : two 16-bit unsigned integer-to-add A[15:0], B[15:0]
** under control of booth encoder
** for architecture of booth array, see "booth.pdf"
** param f0~f4 control the sizes of each level of modules

** .subckt BoothArray x[7:0] slct[4:0][4:0] A[15:0] B[15:0] W=120n L=40n f=1

.subckt BoothArray_lvt x7 x6 x5 x4 x3 x2 x1 x0 slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 A15 A14 A13 A12 A11 A10 A9 A8 A7 A6 A5 A4 A3 A2 A1 A0 A15_bar A14_bar A13_bar A12_bar A11_bar A10_bar A9_bar A8_bar A7_bar A6_bar A5_bar A4_bar A3_bar A2_bar A1_bar A0_bar B15 B14 B13 B12 B11 B10 B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 B15_bar B14_bar B13_bar B12_bar B11_bar B10_bar B9_bar B8_bar B7_bar B6_bar B5_bar B4_bar B3_bar B2_bar B1_bar B0_bar W=120n L=40n f0=1 f1=1 f2=1 f3=1 f4=1

** define dependencies
.include ./ADD_lvt.sp
.include ./PP_MUX_lvt.sp
.include ./IPP_MUX_lvt.sp
.include ./PP_HA_lvt.sp
.include ./IPP_HA_lvt.sp
.include ./PP_FA_lvt.sp
.include ./PP_FA_NoCout_lvt.sp

** define constant output ports
R_B1        gnd! B1     r=0
R_B1_bar    vdd! B1_bar r=0
R_A8        gnd! A8     r=0
R_A8_bar    vdd! A8_bar r=0

** level 0
** contains one ADD and 10 PP_MUX
** intermidaites: s_l0[10:1], s_l0_bar[10:1]

X_ADD_l0_0      slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 A0 A0_bar ADD_lvt W=W L=L f=f0
X_PP_MUX_l0_1   x0 gnd! slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 B0 B0_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_2   x1 x0 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 A1 A1_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_3   x2 x1 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 s_l0_1 s_l0_1_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_4   x3 x2 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 s_l0_2 s_l0_2_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_5   x4 x3 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 s_l0_3 s_l0_3_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_6   x5 x4 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 s_l0_4 s_l0_4_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_7   x6 x5 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 s_l0_5 s_l0_5_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_8   x7 x6 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 s_l0_6 s_l0_6_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_9   x8 x7 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 s_l0_7 s_l0_7_bar PP_MUX_lvt W=W L=L f=f0
X_PP_MUX_l0_10 gnd! x8 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 s_l0_8 s_l0_8_bar PP_MUX_lvt W=W L=L f=f0

R_s_l0_9 s_l0_8 s_l0_9 r=0
R_s_l0_9_bar s_l0_8_bar s_l0_9_bar r=0
R_s_l0_10 s_l0_8_bar s_l0_10 r=0
R_s_l0_10_bar s_l0_8 s_l0_10_bar r=0

** level 1
** contains one ADD, 9 PP_HA and 1 IPP_HA
** intermidaites: s_l1[9:1], s_l1_bar[9:1], c_l1[9:1], c_l1_bar[9:1]

X_ADD_l1_0      slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 A2 A2_bar ADD_lvt W=W L=L f=f1
X_PP_HA_l1_1    s_l0_1 s_l0_1_bar x0 gnd! slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 B2 B2_bar A3 A3_bar PP_HA_lvt W=W L=L f=f1
X_PP_HA_l1_2    s_l0_2 s_l0_2_bar x1 x0 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 B3 B3_bar c_l1_1 c_l1_1_bar PP_HA_lvt W=W L=L f=f1
X_PP_HA_l1_3    s_l0_3 s_l0_3_bar x2 x1 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 s_l1_1 s_l1_1_bar c_l1_2 c_l1_2_bar PP_HA_lvt W=W L=L f=f1
X_PP_HA_l1_4    s_l0_4 s_l0_4_bar x3 x2 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 s_l1_2 s_l1_2_bar c_l1_3 c_l1_3_bar PP_HA_lvt W=W L=L f=f1
X_PP_HA_l1_5    s_l0_5 s_l0_5_bar x4 x3 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 s_l1_3 s_l1_3_bar c_l1_4 c_l1_4_bar PP_HA_lvt W=W L=L f=f1
X_PP_HA_l1_6    s_l0_6 s_l0_6_bar x5 x4 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 s_l1_4 s_l1_4_bar c_l1_5 c_l1_5_bar PP_HA_lvt W=W L=L f=f1
X_PP_HA_l1_7    s_l0_7 s_l0_7_bar x6 x5 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 s_l1_5 s_l1_5_bar c_l1_6 c_l1_6_bar PP_HA_lvt W=W L=L f=f1
X_PP_HA_l1_8    s_l0_8 s_l0_8_bar x7 x6 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 s_l1_6 s_l1_6_bar c_l1_7 c_l1_7_bar PP_HA_lvt W=W L=L f=f1
X_PP_HA_l1_9    s_l0_9 s_l0_9_bar gnd! x7 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 s_l1_7 s_l1_7_bar c_l1_8 c_l1_8_bar PP_HA_lvt W=W L=L f=f1
X_IPP_HA_l1_10  s_l0_10 s_l0_10_bar gnd! gnd! slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 s_l1_8 s_l1_8_bar c_l1_9 c_l1_9_bar IPP_HA_lvt W=W L=L f=f1

R_s_l1_9 vdd! s_l1_9 r=0
R_s_l1_9_bar gnd! s_l1_9_bar r=0

** level 2
** contains one ADD, 9 PP_FA and 1 IPP_MUX
** intermidaites: s_l2[9:1], s_l2_bar[9:1], c_l2[8:1], c_l2_bar[8:1]

X_ADD_l2_0      slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 A4 A4_bar ADD_lvt W=W L=L f=f2
X_PP_FA_l2_1    s_l1_1 s_l1_1_bar c_l1_1 c_l1_1_bar x0 gnd! slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 B4 B4_bar A5 A5_bar PP_FA_lvt W=W L=L f=f2
X_PP_FA_l2_2    s_l1_2 s_l1_2_bar c_l1_2 c_l1_2_bar x1 x0 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 B5 B5_bar c_l2_1 c_l2_1_bar PP_FA_lvt W=W L=L f=f2
X_PP_FA_l2_3    s_l1_3 s_l1_3_bar c_l1_3 c_l1_3_bar x2 x1 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 s_l2_1 s_l2_1_bar c_l2_2 c_l2_2_bar PP_FA_lvt W=W L=L f=f2
X_PP_FA_l2_4    s_l1_4 s_l1_4_bar c_l1_4 c_l1_4_bar x3 x2 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 s_l2_2 s_l2_2_bar c_l2_3 c_l2_3_bar PP_FA_lvt W=W L=L f=f2
X_PP_FA_l2_5    s_l1_5 s_l1_5_bar c_l1_5 c_l1_5_bar x4 x3 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 s_l2_3 s_l2_3_bar c_l2_4 c_l2_4_bar PP_FA_lvt W=W L=L f=f2
X_PP_FA_l2_6    s_l1_6 s_l1_6_bar c_l1_6 c_l1_6_bar x5 x4 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 s_l2_4 s_l2_4_bar c_l2_5 c_l2_5_bar PP_FA_lvt W=W L=L f=f2
X_PP_FA_l2_7    s_l1_7 s_l1_7_bar c_l1_7 c_l1_7_bar x6 x5 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 s_l2_5 s_l2_5_bar c_l2_6 c_l2_6_bar PP_FA_lvt W=W L=L f=f2
X_PP_FA_l2_8    s_l1_8 s_l1_8_bar c_l1_8 c_l1_8_bar x7 x6 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 s_l2_6 s_l2_6_bar c_l2_7 c_l2_7_bar PP_FA_lvt W=W L=L f=f2
X_PP_FA_l2_9    s_l1_9 s_l1_9_bar c_l1_9 c_l1_9_bar gnd! x7 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 s_l2_7 s_l2_7_bar c_l2_8 c_l2_8_bar PP_FA_lvt W=W L=L f=f2
X_IPP_MUX_l2_10 gnd! gnd! slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 s_l2_8 s_l2_8_bar IPP_MUX_lvt W=W L=L f=f2

R_s_l2_9 vdd! s_l2_9 r=0
R_s_l2_9_bar gnd! s_l2_9_bar r=0

** level 3
** contains one ADD, 8 PP_FA, 1 PP_HA and 1 IPP_MUX
** intermidaites: s_l3[8:1], s_l3_bar[8:1], c_l3[8:1], c_l3_bar[8:1]

X_ADD_l3_0      slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 A6 A6_bar ADD_lvt W=W L=L f=f3
X_PP_FA_l3_1    s_l2_1 s_l2_1_bar c_l2_1 c_l2_1_bar x0 gnd! slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 B6 B6_bar A7 A7_bar PP_FA_lvt W=W L=L f=f3
X_PP_FA_l3_2    s_l2_2 s_l2_2_bar c_l2_2 c_l2_2_bar x1 x0 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 B7 B7_bar c_l3_1 c_l3_1_bar PP_FA_lvt W=W L=L f=f3
X_PP_FA_l3_3    s_l2_3 s_l2_3_bar c_l2_3 c_l2_3_bar x2 x1 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 s_l3_1 s_l3_1_bar c_l3_2 c_l3_2_bar PP_FA_lvt W=W L=L f=f3
X_PP_FA_l3_4    s_l2_4 s_l2_4_bar c_l2_4 c_l2_4_bar x3 x2 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 s_l3_2 s_l3_2_bar c_l3_3 c_l3_3_bar PP_FA_lvt W=W L=L f=f3
X_PP_FA_l3_5    s_l2_5 s_l2_5_bar c_l2_5 c_l2_5_bar x4 x3 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 s_l3_3 s_l3_3_bar c_l3_4 c_l3_4_bar PP_FA_lvt W=W L=L f=f3
X_PP_FA_l3_6    s_l2_6 s_l2_6_bar c_l2_6 c_l2_6_bar x5 x4 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 s_l3_4 s_l3_4_bar c_l3_5 c_l3_5_bar PP_FA_lvt W=W L=L f=f3
X_PP_FA_l3_7    s_l2_7 s_l2_7_bar c_l2_7 c_l2_7_bar x6 x5 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 s_l3_5 s_l3_5_bar c_l3_6 c_l3_6_bar PP_FA_lvt W=W L=L f=f3
X_PP_FA_l3_8    s_l2_8 s_l2_8_bar c_l2_8 c_l2_8_bar x7 x6 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 s_l3_6 s_l3_6_bar c_l3_7 c_l3_7_bar PP_FA_lvt W=W L=L f=f3
X_PP_HA_l3_9    s_l2_9 s_l2_9_bar gnd! x7 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 s_l3_7 s_l3_7_bar c_l3_8 c_l3_8_bar PP_HA_lvt W=W L=L f=f3
X_IPP_MUX_l3_10 gnd! gnd! slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 s_l3_8 s_l3_8_bar IPP_MUX_lvt W=W L=L f=f3

** level 4
** contains 8 PP_FA

X_PP_FA_l4_1    s_l3_1 s_l3_1_bar c_l3_1 c_l3_1_bar x0 gnd! slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 B8 B8_bar A9 A9_bar PP_FA_lvt W=W L=L f=f4
X_PP_FA_l4_2    s_l3_2 s_l3_2_bar c_l3_2 c_l3_2_bar x1 gnd! slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 B9 B9_bar A10 A10_bar PP_FA_lvt W=W L=L f=f4
X_PP_FA_l4_3    s_l3_3 s_l3_3_bar c_l3_3 c_l3_3_bar x2 gnd! slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 B10 B10_bar A11 A11_bar PP_FA_lvt W=W L=L f=f4
X_PP_FA_l4_4    s_l3_4 s_l3_4_bar c_l3_4 c_l3_4_bar x3 gnd! slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 B11 B11_bar A12 A12_bar PP_FA_lvt W=W L=L f=f4
X_PP_FA_l4_5    s_l3_5 s_l3_5_bar c_l3_5 c_l3_5_bar x4 gnd! slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 B12 B12_bar A13 A13_bar PP_FA_lvt W=W L=L f=f4
X_PP_FA_l4_6    s_l3_6 s_l3_6_bar c_l3_6 c_l3_6_bar x5 gnd! slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 B13 B13_bar A14 A14_bar PP_FA_lvt W=W L=L f=f4
X_PP_FA_l4_7    s_l3_7 s_l3_7_bar c_l3_7 c_l3_7_bar x6 gnd! slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 B14 B14_bar A15 A15_bar PP_FA_lvt W=W L=L f=f4
X_PP_FA_l4_8    s_l3_8 s_l3_8_bar c_l3_8 c_l3_8_bar x7 gnd! slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 B15 B15_bar PP_FA_NoCout_lvt W=W L=L f=f4

.ends BoothArray_lvt