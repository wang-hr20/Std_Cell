.subckt RippleCarryAdder_8 A0 A1 A2 A3 A4 A5 A6 A7 A_bar0 A_bar1 A_bar2 A_bar3 A_bar4 A_bar5 A_bar6 A_bar7 B0 B1 B2 B3 B4 B5 B6 B7 B_bar0 B_bar1 B_bar2 B_bar3 B_bar4 B_bar5 B_bar6 B_bar7 Cin Cin_bar S0 S1 S2 S3 S4 S5 S6 S7 S_bar0 S_bar1 S_bar2 S_bar3 S_bar4 S_bar5 S_bar6 S_bar7 Cout Cout_bar Co0 Co1 Co2 Co3 Co4 Co5 Co6  Wmin=120n Lmin=40n f=1

** define dependencies
.include /data2/class/lxy/lxy116/Project/Adder_8/FullAdder_1.sp

X_FullAdder_1 A0 A_bar0 B0 B_bar0 Cin Cin_bar S0 S_bar0 Co0 Co_bar0 FullAdder_1 W='Wmin*f' L=Lmin
X_FullAdder_2 A1 A_bar1 B1 B_bar1 Co0 Co_bar0 S1 S_bar1 Co1 Co_bar1 FullAdder_1 W='Wmin*f' L=Lmin
X_FullAdder_3 A2 A_bar2 B2 B_bar2 Co1 Co_bar1 S2 S_bar2 Co2 Co_bar2 FullAdder_1 W='Wmin*f' L=Lmin
X_FullAdder_4 A3 A_bar3 B3 B_bar3 Co2 Co_bar2 S3 S_bar3 Co3 Co_bar3 FullAdder_1 W='Wmin*f' L=Lmin
X_FullAdder_5 A4 A_bar4 B4 B_bar4 Co3 Co_bar3 S4 S_bar4 Co4 Co_bar4 FullAdder_1 W='Wmin*f' L=Lmin
X_FullAdder_6 A5 A_bar5 B5 B_bar5 Co4 Co_bar4 S5 S_bar5 Co5 Co_bar5 FullAdder_1 W='Wmin*f' L=Lmin
X_FullAdder_7 A6 A_bar6 B6 B_bar6 Co5 Co_bar5 S6 S_bar6 Co6 Co_bar6 FullAdder_1 W='Wmin*f' L=Lmin
X_FullAdder_8 A7 A_bar7 B7 B_bar7 Co6 Co_bar6 S7 S_bar7 Cout Cout_bar FullAdder_1 W='Wmin*f' L=Lmin
.ends RippleCarryAdder_8