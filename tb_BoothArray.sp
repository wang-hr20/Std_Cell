.title BoothArray_test
.options post=2 probe
.OPTION PARHIER = LOCAL
.temp 27

** add library section
.lib 	'/data2/class/lxy/lxy125/2024Project/lib/SMIC40NLL/models/hspice/l0040ll_v1p4_1r.lib' SS

.global vdd! gnd!

** define dependencies
.include ./BoothArray.sp
.include ./BoothArray_lvt.sp
.include ./Inv_hvt.sp
.include ./Inv_lvt.sp

X_BoothArray x7 x6 x5 x4 x3 x2 x1 x0 slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 A15 A14 A13 A12 A11 A10 A9 A8 A7 A6 A5 A4 A3 A2 A1 A0 A15_bar A14_bar A13_bar A12_bar A11_bar A10_bar A9_bar A8_bar A7_bar A6_bar A5_bar A4_bar A3_bar A2_bar A1_bar A0_bar B15 B14 B13 B12 B11 B10 B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 B15_bar B14_bar B13_bar B12_bar B11_bar B10_bar B9_bar B8_bar B7_bar B6_bar B5_bar B4_bar B3_bar B2_bar B1_bar B0_bar BoothArray_lvt W=120n L=40n f0=1 f1=1 f2=1 f3=1 f4=1

** inverter as load
X_Inv_load_1    A15     A15_    Inv_lvt
X_Inv_load_2    A14     A14_    Inv_lvt
X_Inv_load_3    A13     A13_    Inv_lvt
X_Inv_load_4    A12     A12_    Inv_lvt
X_Inv_load_5    A11     A11_    Inv_lvt
X_Inv_load_6    A10     A10_    Inv_lvt
X_Inv_load_7    A9      A9_     Inv_lvt
X_Inv_load_8    A8      A8_     Inv_lvt
X_Inv_load_9    A7      A7_     Inv_lvt
X_Inv_load_10   A6      A6_     Inv_lvt
X_Inv_load_11   A5      A5_     Inv_lvt
X_Inv_load_12   A4      A4_     Inv_lvt
X_Inv_load_13   A3      A3_     Inv_lvt
X_Inv_load_14   A2      A2_     Inv_lvt
X_Inv_load_15   A1      A1_     Inv_lvt
X_Inv_load_16   A0      A0_     Inv_lvt

X_Inv_load_17   B15     B15_    Inv_lvt
X_Inv_load_18   B14     B14_    Inv_lvt
X_Inv_load_19   B13     B13_    Inv_lvt
X_Inv_load_20   B12     B12_    Inv_lvt
X_Inv_load_21   B11     B11_    Inv_lvt
X_Inv_load_22   B10     B10_    Inv_lvt
X_Inv_load_23   B9      B9_     Inv_lvt
X_Inv_load_24   B8      B8_     Inv_lvt
X_Inv_load_25   B7      B7_     Inv_lvt
X_Inv_load_26   B6      B6_     Inv_lvt
X_Inv_load_27   B5      B5_     Inv_lvt
X_Inv_load_28   B4      B4_     Inv_lvt
X_Inv_load_29   B3      B3_     Inv_lvt
X_Inv_load_30   B2      B2_     Inv_lvt
X_Inv_load_31   B1      B1_     Inv_lvt
X_Inv_load_32   B0      B0_     Inv_lvt

X_Inv_load_33   A15_bar A15_bar_ Inv_lvt
X_Inv_load_34   A14_bar A14_bar_ Inv_lvt
X_Inv_load_35   A13_bar A13_bar_ Inv_lvt
X_Inv_load_36   A12_bar A12_bar_ Inv_lvt
X_Inv_load_37   A11_bar A11_bar_ Inv_lvt
X_Inv_load_38   A10_bar A10_bar_ Inv_lvt
X_Inv_load_39   A9_bar  A9_bar_  Inv_lvt
X_Inv_load_40   A8_bar  A8_bar_  Inv_lvt
X_Inv_load_41   A7_bar  A7_bar_  Inv_lvt
X_Inv_load_42   A6_bar  A6_bar_  Inv_lvt
X_Inv_load_43   A5_bar  A5_bar_  Inv_lvt
X_Inv_load_44   A4_bar  A4_bar_  Inv_lvt
X_Inv_load_45   A3_bar  A3_bar_  Inv_lvt
X_Inv_load_46   A2_bar  A2_bar_  Inv_lvt
X_Inv_load_47   A1_bar  A1_bar_  Inv_lvt
X_Inv_load_48   A0_bar  A0_bar_  Inv_lvt

X_Inv_load_49   B15_bar B15_bar_ Inv_lvt
X_Inv_load_50   B14_bar B14_bar_ Inv_lvt
X_Inv_load_51   B13_bar B13_bar_ Inv_lvt
X_Inv_load_52   B12_bar B12_bar_ Inv_lvt
X_Inv_load_53   B11_bar B11_bar_ Inv_lvt
X_Inv_load_54   B10_bar B10_bar_ Inv_lvt
X_Inv_load_55   B9_bar  B9_bar_  Inv_lvt
X_Inv_load_56   B8_bar  B8_bar_  Inv_lvt
X_Inv_load_57   B7_bar  B7_bar_  Inv_lvt
X_Inv_load_58   B6_bar  B6_bar_  Inv_lvt
X_Inv_load_59   B5_bar  B5_bar_  Inv_lvt
X_Inv_load_60   B4_bar  B4_bar_  Inv_lvt
X_Inv_load_61   B3_bar  B3_bar_  Inv_lvt
X_Inv_load_62   B2_bar  B2_bar_  Inv_lvt
X_Inv_load_63   B1_bar  B1_bar_  Inv_lvt
X_Inv_load_64   B0_bar  B0_bar_  Inv_lvt

** add power supply
.param pwsp = 0.99
Vddg1 vdd! 0 dc=pwsp

** add stimulation
.param fclk = 200k
.param tper = '1/fclk'
.param tper2 = '1/1.5/fclk'
.param ts = 10p
Vx7     x7      0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vx5     x5      0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vx3     x3      0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vx1     x1      0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0

Vx6     x6      0 pulse(0 pwsp 'tper2-ts/2' ts ts 'tper2/2-ts' tper2) dc=0
Vx4     x4      0 pulse(0 pwsp 'tper2-ts/2' ts ts 'tper2/2-ts' tper2) dc=0
Vx2     x2      0 pulse(0 pwsp 'tper2-ts/2' ts ts 'tper2/2-ts' tper2) dc=0
Vx0     x0      0 pulse(0 pwsp 'tper2-ts/2' ts ts 'tper2/2-ts' tper2) dc=0

Vslct_4_m1  slct_4_m1   0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vslct_4_m2  slct_4_m2   0 pulse(pwsp 0 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vslct_4_0   slct_4_0    0 0 dc=0
Vslct_4_p1  slct_4_p1   0 0 dc=0
Vslct_4_p2  slct_4_p2   0 0 dc=0

Vslct_3_m1  slct_3_m1   0 0 dc=0
Vslct_3_m2  slct_3_m2   0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vslct_3_0   slct_3_0    0 pulse(pwsp 0 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vslct_3_p1  slct_3_p1   0 0 dc=0
Vslct_3_p2  slct_3_p2   0 0 dc=0

Vslct_2_m1  slct_2_m1   0 0 dc=0
Vslct_2_m2  slct_2_m2   0 0 dc=0
Vslct_2_0   slct_2_0    0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vslct_2_p1  slct_2_p1   0 pulse(pwsp 0 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vslct_2_p2  slct_2_p2   0 0 dc=0

Vslct_1_m1  slct_1_m1   0 0 dc=0
Vslct_1_m2  slct_1_m2   0 0 dc=0
Vslct_1_0   slct_1_0    0 0 dc=0
Vslct_1_p1  slct_1_p1   0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vslct_1_p2  slct_1_p2   0 pulse(pwsp 0 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0

Vslct_0_m1  slct_0_m1   0 pulse(pwsp 0 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0
Vslct_0_m2  slct_0_m2   0 0 dc=0
Vslct_0_0   slct_0_0    0 0 dc=0
Vslct_0_p1  slct_0_p1   0 0 dc=0
Vslct_0_p2  slct_0_p2   0 pulse(0 pwsp 'tper-ts/2' ts ts 'tper/2-ts' tper) dc=0

** add simulation command
.tran 1n 'tper*21'
.op

** add output
.probe tran v(vdd!) v(gnd!) v(x7) v(x6) v(x5) v(x4) v(x3) v(x2) v(x1) v(x0) v(A15) v(A14) v(A13) v(A12) v(A11) v(A10) v(A9) v(A8) v(A7) v(A6) v(A5) v(A4) v(A3) v(A2) v(A1) v(A0) v(B15) v(B14) v(B13) v(B12) v(B11) v(B10) v(B9) v(B8) v(B7) v(B6) v(B5) v(B4) v(B3) v(B2) v(B1) v(B0)

.measure tran avg_power avg p(vddg1) from=0 to='tper*101'