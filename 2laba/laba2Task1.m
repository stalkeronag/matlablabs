sc=@(x) x.^3+11*x.^2-8*x-25;
x=0:0.01:4;
plot(x,sc(x));
x0=1.5;
x1=3;
value = Function(x0,x1,sc);
%test
r=roots([1 11 -8 -25])
