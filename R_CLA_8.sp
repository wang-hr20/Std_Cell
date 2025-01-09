.subckt R_CLA_8 A0 A1 A2 A3 A4 A5 A6 A7 B0 B1 B2 B3 B4 B5 B6 B7 A0_bar A1_bar A2_bar A3_bar A4_bar A5_bar A6_bar A7_bar B0_bar B1_bar B2_bar B3_bar B4_bar B5_bar B6_bar B7_bar Cin Cin_bar S0 S1 S2 S3 S4 S5 S6 S7 Cout Cout_bar W=120n L=40n f=1

.include /data2/class/lxy/lxy116/Project/Adder_8/CLA_4.sp

X_CLA_1 A0 A1 A2 A3 B0 B1 B2 B3 A0_bar A1_bar A2_bar A3_bar B0_bar B1_bar B2_bar B3_bar Cin Cin_bar S0 S1 S2 S3 C1 C1_bar CLA_4 
X_CLA_1 A4 A5 A6 A7 B4 B5 B6 B7 A4_bar A5_bar A6_bar A7_bar B4_bar B5_bar B6_bar B7_bar C1 C1_bar S4 S5 S6 S7 Cout Cout_bar CLA_4 

.ends R_CLA_8