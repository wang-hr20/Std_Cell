.subckt AN_lvt_4 A B C D out W=120n L=40n f=1
X_ND A B C D AN_ABCD ND_lvt_4 f=f
X_Inv AN_ABCD out Inv_lvt f=f
.ends AN_lvt_4
