.subckt OR_lvt_4 A B C D out W=120n L=40n f=1
X_NR A B C D NR_ABCD NR_lvt_4 f=f
X_Inv NR_ABCD out Inv_lvt f=f
.ends OR_lvt_4
