function s=Integer1(left,right,Func)
N=1000000;
s=0;
step=(right-left)/N;
current=left;
while(current<right)
    s=s+step*Func(current);
    current=current+step;
end
end