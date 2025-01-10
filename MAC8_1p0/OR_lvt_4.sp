.subckt OR_lvt_4 A B C D out W=120n L=40n f=1

.include ./NR_lvt_4.sp
.include ./Inv_lvt.sp

X_NR A B C D NR_ABCD NR_lvt_4 f=f
X_Inv NR_ABCD out Inv_lvt f=f
.ends OR_lvt_4
