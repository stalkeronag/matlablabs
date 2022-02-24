sc2=@(x) x.^3+11*x.^2-8*x-25;
a=1.5;
b=3;
Function(a,b,sc2);
x=0:0.01:3;
plot(x,sc2(x))

