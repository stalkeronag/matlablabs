sc=@(x) x.^3+0.3*x.^2+1.8*x-15;
x=0:0.01:4;
plot(x,sc(x));
x0=2;
x1=3;
Function2(x0,x1,sc);