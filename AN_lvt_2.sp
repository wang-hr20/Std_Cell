.subckt AN_lvt_2 A B out W=120n L=40n f=1
X_ND A B AN_AB ND_lvt_2 f=f
X_Inv AN_AB out Inv_lvt f=f
.ends AN_lvt_2
