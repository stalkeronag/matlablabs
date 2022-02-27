function s=Integer2(left,right,Func)
N=1000000;
s=0;
step=(right-left)/N;
current=left;
while(current<right)
    s=s+step*(Func(current)+Func(current+step));
    current=current+step;
end
s=s/2;
end