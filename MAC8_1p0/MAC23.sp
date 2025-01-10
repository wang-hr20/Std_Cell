.subckt MAC8_24F w1_7 w1_6 w1_5 w1_4 w1_3 w1_2 w1_1 w1_0 w2_7 w2_6 w2_5 w2_4 w2_3 w2_2 w2_1 w2_0 a7 a6 a5 a4 a3 a2 a1 a0 b7 b6 b5 b4 b3 b2 b1 b0 z16 z15 z14 z13 z12 z11 z10 z9 z8 z7 z6 z5 z4 z3 z2 z1 z0 W=120nm L=40nm f=1

.include 'MAC8_24F_Mcore.sp'
.include 'Inv_lvt.sp'
.include 'R_CLA_8.sp'
.include 'RippleCarryAdder_8.sp'

X_MAC8_24F_Mcore_1 w1_7 w1_6 w1_5 w1_4 w1_3 w1_2 w1_1 w1_0 a7 a6 a5 a4 a3 a2 a1 a0 za15 za14 za13 za12 za11 za10 za9 za8 za7 za6 za5 za4 za3 za2 za1 za0 MAC8_24F_Mcore

X_MAC8_24F_Mcore_2 w2_7 w2_6 w2_5 w2_4 w2_3 w2_2 w2_1 w2_0 b7 b6 b5 b4 b3 b2 b1 b0 zb15 zb14 zb13 zb12 zb11 zb10 zb9 zb8 zb7 zb6 zb5 zb4 zb3 zb2 zb1 zb0 MAC8_24F_Mcore


X_Inv_za15 za15 za15_bar Inv_lvt W=W L=L f=1
X_Inv_za14 za14 za14_bar Inv_lvt W=W L=L f=1
X_Inv_za13 za13 za13_bar Inv_lvt W=W L=L f=1
X_Inv_za12 za12 za12_bar Inv_lvt W=W L=L f=1
X_Inv_za11 za11 za11_bar Inv_lvt W=W L=L f=1
X_Inv_za10 za10 za10_bar Inv_lvt W=W L=L f=1
X_Inv_za9 za9 za9_bar Inv_lvt W=W L=L f=1
X_Inv_za8 za8 za8_bar Inv_lvt W=W L=L f=1
X_Inv_za7 za7 za7_bar Inv_lvt W=W L=L f=1
X_Inv_za6 za6 za6_bar Inv_lvt W=W L=L f=1
X_Inv_za5 za5 za5_bar Inv_lvt W=W L=L f=1
X_Inv_za4 za4 za4_bar Inv_lvt W=W L=L f=1
X_Inv_za3 za3 za3_bar Inv_lvt W=W L=L f=1
X_Inv_za2 za2 za2_bar Inv_lvt W=W L=L f=1
X_Inv_za1 za1 za1_bar Inv_lvt W=W L=L f=1
X_Inv_za0 za0 za0_bar Inv_lvt W=W L=L f=1

X_Inv_zb15 zb15 zb15_bar Inv_lvt W=W L=L f=1
X_Inv_zb14 zb14 zb14_bar Inv_lvt W=W L=L f=1
X_Inv_zb13 zb13 zb13_bar Inv_lvt W=W L=L f=1
X_Inv_zb12 zb12 zb12_bar Inv_lvt W=W L=L f=1
X_Inv_zb11 zb11 zb11_bar Inv_lvt W=W L=L f=1
X_Inv_zb10 zb10 zb10_bar Inv_lvt W=W L=L f=1
X_Inv_zb9 zb9 zb9_bar Inv_lvt W=W L=L f=1
X_Inv_zb8 zb8 zb8_bar Inv_lvt W=W L=L f=1
X_Inv_zb7 zb7 zb7_bar Inv_lvt W=W L=L f=1
X_Inv_zb6 zb6 zb6_bar Inv_lvt W=W L=L f=1
X_Inv_zb5 zb5 zb5_bar Inv_lvt W=W L=L f=1
X_Inv_zb4 zb4 zb4_bar Inv_lvt W=W L=L f=1
X_Inv_zb3 zb3 zb3_bar Inv_lvt W=W L=L f=1
X_Inv_zb2 zb2 zb2_bar Inv_lvt W=W L=L f=1
X_Inv_zb1 zb1 zb1_bar Inv_lvt W=W L=L f=1
X_Inv_zb0 zb0 zb0_bar Inv_lvt W=W L=L f=1

** 16bit Adder todo
* X_R_CLA_8_1 zA0 zA1 zA2 zA3 zA4 zA5 zA6 zA7 zB0 zB1 zB2 zB3 zB4 zB5 zB6 zB7 zA0_bar zA1_bar zA2_bar zA3_bar zA4_bar zA5_bar zA6_bar zA7_bar zB0_bar zB1_bar zB2_bar zB3_bar zB4_bar zB5_bar zB6_bar zB7_bar gnd! vdd! z0 z1 z2 z3 z4 z5 z6 z7 Coa Coa_bar R_CLA_8 W=120n L=40n f=1

* X_R_CLA_8_2 zA8 zA9 zA10 zA11 zA12 zA13 zA14 zA15 zB8 zB9 zB10 zB11 zB12 zB13 zB14 zB15 zA8_bar zA9_bar zA10_bar zA11_bar zA12_bar zA13_bar zA14_bar zA15_bar zB8_bar zB9_bar zB10_bar zB11_bar zB12_bar zB13_bar zB14_bar zB15_bar Coa Coa_bar z8 z9 z10 z11 z12 z13 z14 z15 z16 Cout_bar R_CLA_8 W=120n L=40n f=1

X_RCA_8_1 zA0 zA1 zA2 zA3 zA4 zA5 zA6 zA7 zA0_bar zA1_bar zA2_bar zA3_bar zA4_bar zA5_bar zA6_bar zA7_bar zB0 zB1 zB2 zB3 zB4 zB5 zB6 zB7 zB0_bar zB1_bar zB2_bar zB3_bar zB4_bar zB5_bar zB6_bar zB7_bar gnd! vdd! z0 z1 z2 z3 z4 z5 z6 z7 z0_bar z1_bar z2_bar z3_bar z4_bar z5_bar z6_bar z7_bar Coa Coa_bar Co0 Co1 Co2 Co3 Co4 Co5 Co6 RippleCarryAdder_8 W=120n L=40n f=1

X_RCA_8_2 zA8 zA9 zA10 zA11 zA12 zA13 zA14 zA15 zA8_bar zA9_bar zA10_bar zA11_bar zA12_bar zA13_bar zA14_bar zA15_bar zB8 zB9 zB10 zB11 zB12 zB13 zB14 zB15 zB8_bar zB9_bar zB10_bar zB11_bar zB12_bar zB13_bar zB14_bar zB15_bar Coa Coa_bar z8 z9 z10 z11 z12 z13 z14 z15 z8_bar z9_bar z10_bar z11_bar z12_bar z13_bar z14_bar z15_bar z16 Cout_bar Co7 Co8 Co9 Co10 Co11 Co12 Co13 RippleCarryAdder_8 W=120n L=40n f=1



.ends