z1 = [-1+1i -1-1i];
p1 = [0 0 -5 -6 1 -1];
k1 = [8];
Gs1 = zpk(z1,p1,k1);
num = [1];
den = [1 1 0 1];
sys1 =tf(num,den);
z2 = [];
p2 = [0 1];
k2 = [1];
sys2 = zpk(z2,p2,k2);
Gs2 = series(sys1,sys2);