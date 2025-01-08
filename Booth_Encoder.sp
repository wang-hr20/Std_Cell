** booth encoder 
** input x[2:0] 
** output slct[4:0] : 2X X 0 -X -2X
** mos d g s b
** inv pp ipp wmin lmin f

.subckt Booth_Encoder slct_4 slct_3 slct_2 slct_1 slct_0 x_2 x_1 x_0 Wmin = 120n Lmin = 40n f = 1

** define dependencies
.include ./Inv_lvt.sp
.include ./XR_lvt.sp
.include ./AN_lvt_2.sp
.include ./AN_lvt_3.sp

X_inv1 x_0 x_0_inv Inv_lvt
X_inv2 x_1 x_1_inv Inv_lvt
X_inv3 x_2 x_2_inv Inv_lvt

X_xr1 x_0 x_0_inv x_1 x_1_inv a a_inv XR_lvt

X_an3_1 x_2_inv x_1 x_0 slct_4_inv AN_lvt_3
X_an3_2 x_2 x_1_inv x_0_inv slct_0_inv AN_lvt_3
X_an2_1 x_2_inv a slct_3_inv AN_lvt_2
X_an2_2 x_2 a slct_1_inv AN_lvt_2
X_an3_3 x_0 x_1 x_2 t1 AN_lvt_3
X_an3_4 x_0_inv x_1_inv x_2_inv t2 AN_lvt_3
X_an2_3 t1 t2 slct_2 AN_lvt_2

X_inv4 slct_4_inv slct_4 Inv_lvt
X_inv5 slct_3_inv slct_3 Inv_lvt
X_inv6 slct_1_inv slct_1 Inv_lvt
X_inv7 slct_0_inv slct_0 Inv_lvt



.ends Booth_Encoder