function value=Function2(X0,X1,Func)
e=10^-4;
previous=X0;
current=X1;
while(abs(current-previous)>e)
    next=previous-Func(previous)*(current-previous)/(Func(current)-Func(previous));
    previous=current;
    current=next;
end
current
end