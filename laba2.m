sc=@(x) x.^3+11*x.^2-8*x-25;
x=0:0.01:4;
plot(x,sc(x));
x0=3;
x1=1.5;
Function2(x0,x1,sc);
