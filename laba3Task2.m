A=[2.34,-4.21,-11.61;8.04,5.22,0.27;3.92,-7.99,8.37];
b=[14.41;-6.44;55.36];
F=b;
C=A;
for i=1:size(A,1)
    F(i)=b(i)/A(i,i);
    C(i,i)=0;
    C(i,:)=-C(i,:)/A(i,i);
end
currentSet=b;
N=228;
k=0;
while k<N
    next=C*currentSet+F;
    if (abs(next-currentSet)<10^-4)
        break;
    end
    currentSet=next;
    k=k+1;  
end
k
next
A\b