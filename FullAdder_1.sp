.subckt FullAdder_1 A A_bar B B_bar Cin Cin_bar S S_bar Cout Cout_bar Wmin=120n Lmin=40n f=1

** define dependencies
.include /data2/class/lxy/lxy116/Project/Adder_8/Inv.sp
.include /data2/class/lxy/lxy116/Project/Adder_8/TranGate.sp

** adder
XG_1 A P B_bar B TranGate W='Wmin*f' L=Lmin
XG_2 A_bar P_bar B_bar B TranGate W='Wmin*f' L=Lmin
XG_3 A_bar P B B_bar TranGate W='Wmin*f' L=Lmin
XG_4 A P_bar B B_bar TranGate W='Wmin*f' L=Lmin

XG_5 P S_inv Cin Cin_bar TranGate W='Wmin*f' L=Lmin
XG_6 P_bar S_bar_inv Cin Cin_bar TranGate W='Wmin*f' L=Lmin
XG_7 P_bar S_inv Cin_bar Cin TranGate W='Wmin*f' L=Lmin
XG_8 P S_bar_inv Cin_bar Cin TranGate W='Wmin*f' L=Lmin

X_inv1 S_inv S Inv
X_inv2 S_bar_inv S_bar Inv

** Carry signal generator
XG_9 A G B B_bar TranGate W='Wmin*f' L=Lmin
XG_10 A_bar G_bar B B_bar TranGate W='Wmin*f' L=Lmin
XG_11 gnd! G B_bar B TranGate W='Wmin*f' L=Lmin
XG_12 vdd! G_bar B_bar B TranGate W='Wmin*f' L=Lmin

XG_13 Cin Cout_bar_inv P P_bar TranGate W='Wmin*f' L=Lmin
XG_14 Cin_bar Cout_inv P P_bar TranGate W='Wmin*f' L=Lmin
XG_15 G Cout_bar_inv P_bar P TranGate W='Wmin*f' L=Lmin
XG_16 G_bar Cout_inv P_bar P TranGate W='Wmin*f' L=Lmin

X_inv3 Cout_inv Cout Inv
X_inv4 Cout_bar_inv Cout_bar Inv

.ends FullAdder_1