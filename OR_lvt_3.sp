.subckt OR_lvt_3 A B C out W=120n L=40n f=1

.include ./NR_lvt_3.sp
.include ./Inv_lvt.sp

X_NR A B C NR_ABC NR_lvt_3 f=f
X_Inv NR_ABC out Inv_lvt f=f
.ends OR_lvt_3
