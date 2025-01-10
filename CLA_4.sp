.subckt CLA_4 A0 A1 A2 A3 B0 B1 B2 B3 A0_bar A1_bar A2_bar A3_bar B0_bar B1_bar B2_bar B3_bar Cin Cin_bar S0 S1 S2 S3 Cout Cout_bar W=120n L=40n f=1

** 4bit carry lookahead adder, using lvt transistors

.include /data2/class/lxy/lxy116/Project/Adder_8/NR_lvt_2.sp
.include /data2/class/lxy/lxy116/Project/Adder_8/ND_lvt_2.sp
.include /data2/class/lxy/lxy116/Project/Adder_8/Inv_lvt.sp
.include /data2/class/lxy/lxy116/Project/Adder_8/XR_lvt.sp

** generate G signal
X_NR_0 A0_bar B0_bar G0 NR_lvt_2 f=2
X_NR_1 A1_bar B1_bar G1 NR_lvt_2 f=2
X_NR_2 A2_bar B2_bar G2 NR_lvt_2 f=2
X_NR_3 A3_bar B3_bar G3 NR_lvt_2 f=1

** G buffer
** X_Buf_1 G0_bar G0 Inv_lvt f=8
** X_Buf_2 G1_bar G1 Inv_lvt f=8

** generate P signal
** X_XR0 A0 A0_bar B0 B0_bar P0 P0_bar XR_lvt f=2
** X_XR1 A1 A1_bar B1 B1_bar P1 P1_bar XR_lvt f=2
** X_XR2 A2 A2_bar B2 B2_bar P2 P2_bar XR_lvt f=2
** X_XR3 A3 A3_bar B3 B3_bar P3 P3_bar XR_lvt f=1
X_ND1 A0_bar B0_bar P0 ND_lvt_2 f=2
X_ND2 A1_bar B1_bar P1 ND_lvt_2 f=2
X_ND3 A2_bar B2_bar P2 ND_lvt_2 f=2
X_ND4 A3_bar B3_bar P3 ND_lvt_2 f=2
X_INV4 P0 P0_bar Inv_lvt f=1
X_INV5 P1 P1_bar Inv_lvt f=1
X_INV6 P2 P2_bar Inv_lvt f=1
X_INV7 P3 P3_bar Inv_lvt f=1


** P buffer
** X_Buf3 P0_bar P0 Inv_lvt  f=8
** X_Buf4 P1_bar P1 Inv_lvt  f=8

** Co0 = G0 + P0 * Cin
X_Mp0_1 vdd!  G0  Co0_1   vdd! plvt11ll_ckt W='W*4' L=L
X_Mp0_2 Co0_1 Cin Co0_bar vdd! plvt11ll_ckt W='W*4' L=L
X_Mp0_3 Co0_1 P0  Co0_bar vdd! plvt11ll_ckt W='W*4' L=L
X_Mn0_1 gnd!  G0  Co0_bar gnd! nlvt11ll_ckt W='W*2' L=L
X_Mn0_2 gnd!  Cin Co0_2   gnd! nlvt11ll_ckt W='W*4' L=L
X_Mn0_3 Co0_2 P0  Co0_bar gnd! nlvt11ll_ckt W='W*4' L=L

** Co1 = G1 + P1 * G0 + P1 * P0 * Cin
X_Mp1_1 vdd!  G1 Co1_1   vdd! plvt11ll_ckt W='W*2' L=L
X_Mp1_2 Co1_1 P1 Co1_bar vdd! plvt11ll_ckt W='W*2' L=L
X_Mp1_3 Co1_1 G0 Co1_2   vdd! plvt11ll_ckt W='W*2' L=L
X_Mp1_4 Co1_2 P0 Co1_bar vdd! plvt11ll_ckt W='W*2' L=L
X_Mp1_5 Co1_2 Cin Co1_bar vdd! plvt11ll_ckt W='W*2' L=L
X_Mn1_1 gnd!  G1 Co1_bar gnd! nlvt11ll_ckt W=W     L=L
X_Mn1_2 gnd!  P1 Co1_3   gnd! nlvt11ll_ckt W='2*W' L=L
X_Mn1_3 Co1_3 G0 Co1_bar gnd! nlvt11ll_ckt W='2*W' L=L
X_Mn1_4 Co1_3 P0 Co1_4   gnd! nlvt11ll_ckt W='2*W' L=L
X_Mn1_5 Co1_4 Cin Co1_bar gnd! nlvt11ll_ckt W='2*W' L=L

** Co2 = G2 + P2 * (G1 + P1 * (G0 + P0 * Cin))
X_Mp2_1 vdd!  G2 Co2_1   vdd! plvt11ll_ckt W='4*W' L=L
X_Mp2_2 Co2_1 P2 Co2_bar vdd! plvt11ll_ckt W='4*W' L=L
X_Mp2_3 Co2_1 G1 Co2_2   vdd! plvt11ll_ckt W='4*W' L=L
X_Mp2_4 Co2_2 P1 Co2_bar vdd! plvt11ll_ckt W='4*W' L=L
X_Mp2_5 Co2_2 G0 Co2_3   vdd! plvt11ll_ckt W='4*W' L=L
X_Mp2_6 Co2_3 P0 Co2_bar vdd! plvt11ll_ckt W='4*W' L=L
X_Mp2_7 Co2_3 Cin Co2_bar vdd! plvt11ll_ckt W='4*W' L=L
X_Mn2_1 gnd! G2 Co2_bar gnd! nlvt11ll_ckt W=W L=L
X_Mn2_2 Co2_4 P2 Co2_bar gnd! nlvt11ll_ckt W='2*W' L=L
X_Mn2_3 Co2_4 P1 Co2_5   gnd! nlvt11ll_ckt W='4*W' L=L
X_Mn2_4 Co2_4 G1 gnd!    gnd! nlvt11ll_ckt W='2*W' L=L
X_Mn2_5 gnd!  G0 Co2_5 gnd! nlvt11ll_ckt W='4*W' L=L
X_Mn2_6 Co2_6  P0 Co2_5 gnd! nlvt11ll_ckt W='4*W' L=L
X_Mn2_7 Co2_6  Cin gnd! gnd! nlvt11ll_ckt W='4*W' L=L

** Co3
X_Mp3_1 vdd!  P3 Co3_bar vdd! plvt11ll_ckt W='W*2' L=L
X_Mp3_2 vdd!  G3 Co3_1   vdd! plvt11ll_ckt W='W*4' L=L
X_Mp3_3 Co3_1 P2 Co3_bar vdd! plvt11ll_ckt W='W*4' L=L
X_Mp3_4 Co3_1 G2 Co3_2   vdd! plvt11ll_ckt W='W*4' L=L
X_Mp3_5 Co3_2 P1 Co3_bar vdd! plvt11ll_ckt W='W*4' L=L
X_Mp3_6 Co3_2 G1 Co3_3   vdd! plvt11ll_ckt W='W*4' L=L
X_Mp3_7 Co3_3 P0 Co3_bar vdd! plvt11ll_ckt W='W*4' L=L
X_Mp3_8 Co3_3 G0 Co3_4   vdd! plvt11ll_ckt W='W*4' L=L
X_Mp3_9 Co3_4 Cin Co3_bar vdd! plvt11ll_ckt W='W*4' L=L
X_Mn3_1 Co3_bar Cin Co3_5 gnd! nlvt11ll_ckt W=W L=L
X_Mn3_2 Co3_5   P0 Co3_6 gnd! nlvt11ll_ckt W=W L=L
X_Mn3_3 Co3_bar G0 Co3_6 gnd! nlvt11ll_ckt W=W L=L
X_Mn3_4 Co3_6   P1 Co3_7 gnd! nlvt11ll_ckt W=W L=L
X_Mn3_5 Co3_bar G1 Co3_7 gnd! nlvt11ll_ckt W=W L=L
X_Mn3_6 Co3_7   P2 Co3_8 gnd! nlvt11ll_ckt W=W L=L
X_Mn3_7 Co3_bar G2 Co3_8 gnd! nlvt11ll_ckt W=W L=L
X_Mn3_8 Co3_8   P3 gnd!  gnd! nlvt11ll_ckt W=W L=L
X_Mn3_9 Co3_bar G3 gnd! gnd! nlvt11ll_ckt W=W L=L

** Cout
X_INV0 Co0_bar Co0 Inv_lvt f=1
X_INV1 Co1_bar Co1 Inv_lvt f=1
X_INV2 Co2_bar Co2 Inv_lvt f=1
X_INV3 Co3_bar Cout Inv_lvt f=1
X_INV4 Cout Cout_bar Inv_lvt f=1

** Generate S
X_XR4 H0 H0_bar Cin Cin_bar S0 S0_bar XR_lvt f=1
X_XR5 H1 H1_bar Co0 Co0_bar S1 S1_bar XR_lvt f=1
X_XR6 H2 H2_bar Co1 Co1_bar S2 S2_bar XR_lvt f=1
X_XR7 H3 H3_bar Co2 Co2_bar S3 S3_bar XR_lvt f=1

X_XR8 A0 A0_bar B0 B0_bar H0 H0_bar XR_lvt f=1
X_XR9 A1 A1_bar B1 B1_bar H1 H1_bar XR_lvt f=1
X_XR10 A2 A2_bar B2 B2_bar H2 H2_bar XR_lvt f=1
X_XR11 A3 A3_bar B3 B3_bar H3 H3_bar XR_lvt f=1

.ends CLA_4