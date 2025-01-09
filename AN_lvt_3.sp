.subckt AN_lvt_3 A B C out W=120n L=40n f=1
X_ND A B C AN_ABC ND_lvt_3 f=f
X_Inv AN_ABC out Inv_lvt f=f
.ends AN_lvt_3