.title MAC8 testbench


 
.option CONVERGE=5
.options list node post=2 probe 
.temp 25


** add library section
.protect
.lib '/data2/class/lxy/lxy125/2024Project/lib/SMIC40NLL/models/hspice/l0040ll_v1p4_1r.lib' SS
.unprotect

** add design netlist

.include './MAC23.sp'     

.global vdd! gnd!


** add device under test

X_MAC8 w1_7 w1_6 w1_5 w1_4 w1_3 w1_2 w1_1 w1_0 	w2_7 w2_6 w2_5 w2_4 w2_3 w2_2 w2_1 w2_0 a7 a6 a5 a4 a3 a2 a1 a0  b7 b6 b5 b4 b3 b2 b1 b0 z16 z15 z14 z13 z12 z11 z10 z9 z8 z7 z6 z5 z4 z3 z2 z1 z0 MAC8_24F


** add output load

.param	cl=0.75f

Cz16	z16 	0	c=cl
Cz15	z15 	0	c=cl
Cz14	z14 	0	c=cl
Cz13	z13 	0	c=cl
Cz12	z12 	0	c=cl
Cz11	z11 	0	c=cl
Cz10	z10 	0	c=cl
Cz9		z9	 	0	c=cl
Cz8		z8	 	0	c=cl
Cz7		z7		0	c=cl
Cz6		z6 		0	c=cl
Cz5		z5 		0	c=cl
Cz4		z4 		0	c=cl
Cz3		z3 		0	c=cl
Cz2		z2		0	c=cl
Cz1		z1 		0	c=cl
Cz0		z0 		0	c=cl


** add power supply

.param	pwsp=930m
Vddgl	vdd!	0	dc=pwsp
Vddgnd	gnd!   	0   dc=0


** add stimulition 

.param	tper=1000p
.param	ts=2.12p
.VEC './simu.vec'


** add simulation command

.tran 1n  'tper*10'
.op

  
.probe tran v(vdd!) v(gnd!) v(w1*) v(w2*) v(a*) v(b*) v(z*)

.measure tran avg_power avg p(vddgl) from=0 to='tper*10'



* .alter
* .param pwsp=0.9V

* .alter
* .param pwsp=0.6V

.end
