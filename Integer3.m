function s=Integer3(left,right,Func)
N=1000000;
s=0;
step=(right-left)/N;
last=left;
current=last+step;
next=current+step;
while(next<right)
    s=s+Func(last)+4*Func(current)+Func(next);
    last=last+step;
    current=last+step;
    next=current+step;
end
s=s*step/6;
end