function solutionSet=Iteration(A,b,testSet,levelPrecision,CountIterations)
n=size(A,1);
solutionSet=zeros(n,1);
k=0;
flag=true;
while k<CountIterations
    for i=1:n
     solutionSet(i)=(b(i)-A(i,[1:i-1,i+1:n])*testSet([1:i-1,i+1:n]))/A(i,i);
    end
    for i=1:n
        if abs(solutionSet(i)-testSet(i))>levelPrecision
           flag=false;
           break
        end
    end
    if(flag)
        break
    end
    testSet=solutionSet;
    k=k+1;
end
k
end
