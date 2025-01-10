.subckt MAC8_24F_Mcore w_7 w_6 w_5 w_4 w_3 w_2 w_1 w_0 aa7 aa6 aa5 aa4 aa3 aa2 aa1 aa0 z15 z14 z13 z12 z11 z10 z9 z8 z7 z6 z5 z4 z3 z2 z1 z0

.include 'BoothArray_lvt.sp'
.include 'Booth_Encoder.sp'
.include 'R_CLA_8.sp'

**Booth Array
X_BoothArray aa7 aa6 aa5 aa4 aa3 aa2 aa1 aa0 slct_4_m1 slct_4_m2 slct_4_0 slct_4_p1 slct_4_p2 slct_3_m1 slct_3_m2 slct_3_0 slct_3_p1 slct_3_p2 slct_2_m1 slct_2_m2 slct_2_0 slct_2_p1 slct_2_p2 slct_1_m1 slct_1_m2 slct_1_0 slct_1_p1 slct_1_p2 slct_0_m1 slct_0_m2 slct_0_0 slct_0_p1 slct_0_p2 A15 A14 A13 A12 A11 A10 A9 A8 A7 A6 A5 A4 A3 A2 A1 A0 A15_bar A14_bar A13_bar A12_bar A11_bar A10_bar A9_bar A8_bar A7_bar A6_bar A5_bar A4_bar A3_bar A2_bar A1_bar A0_bar B15 B14 B13 B12 B11 B10 B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 B15_bar B14_bar B13_bar B12_bar B11_bar B10_bar B9_bar B8_bar B7_bar B6_bar B5_bar B4_bar B3_bar B2_bar B1_bar B0_bar BoothArray_lvt W=120n L=40n f0=1 f1=1 f2=1 f3=1 f4=1

**5 Booth Encoder
X_BoothEncoder_0 slct_0_p2 slct_0_p1 slct_0_0 slct_0_m1 slct_0_m2 w_1 w_0 gnd! Booth_Encoder Wmin=120n Lmin=40n f=1

X_BoothEncoder_1 slct_1_p2 slct_1_p1 slct_1_0 slct_1_m1 slct_1_m2 w_3 w_2 w_1 Booth_Encoder Wmin=120n Lmin=40n f=1

X_BoothEncoder_2 slct_2_p2 slct_2_p1 slct_2_0 slct_2_m1 slct_2_m2 w_5 w_4 w_3 Booth_Encoder Wmin=120n Lmin=40n f=1

X_BoothEncoder_3 slct_3_p2 slct_3_p1 slct_3_0 slct_3_m1 slct_3_m2 w_7 w_6 w_5 Booth_Encoder Wmin=120n Lmin=40n f=1

X_BoothEncoder_4 slct_4_p2 slct_4_p1 slct_4_0 slct_4_m1 slct_4_m2 gnd! gnd! w_7 Booth_Encoder Wmin=120n Lmin=40n f=1

** 16bit Adder to do
* R0 z0 A8 R=0;
* R1 z1 A9 R=0;
* R2 z2 A10 R=0;
* R3 z3 A11 R=0;
* R4 z4 A12 R=0;
* R5 z5 A13 R=0;
* R6 z6 A14 R=0;
* R7 z7 A15 R=0;
* R8 z8 B8 R=0;
* R9 z9 B9 R=0;
* R10 z10 B10 R=0;
* R11 z11 B11 R=0;
* R12 z12 B12 R=0;
* R13 z13 B13 R=0;
* R14 z14 B14 R=0;
* R15 z15 B15 R=0;

X_R_CLA_8_1 A0 A1 A2 A3 A4 A5 A6 A7 B0 B1 B2 B3 B4 B5 B6 B7 A0_bar A1_bar A2_bar A3_bar A4_bar A5_bar A6_bar A7_bar B0_bar B1_bar B2_bar B3_bar B4_bar B5_bar B6_bar B7_bar gnd! vdd! z0 z1 z2 z3 z4 z5 z6 z7 Coa Coa_bar R_CLA_8 W=120n L=40n f=1

X_R_CLA_8_2 A8 A9 A10 A11 A12 A13 A14 A15 B8 B9 B10 B11 B12 B13 B14 B15 A8_bar A9_bar A10_bar A11_bar A12_bar A13_bar A14_bar A15_bar B8_bar B9_bar B10_bar B11_bar B12_bar B13_bar B14_bar B15_bar Coa Coa_bar z8 z9 z10 z11 z12 z13 z14 z15 Cout Cout_bar R_CLA_8 W=120n L=40n f=1


.ends MAC8_24F_Mcore