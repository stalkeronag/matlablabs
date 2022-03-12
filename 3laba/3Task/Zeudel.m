function x = Zeudel(A,B)
  AB = [A B];
  countColumn =size(A,2);
  listString = zeros(countColumn,1);
for i =1 :countColumn
   listString(i) =  MaxAbs(A(:,i));
   AB(i,1:countColumn) = A(listString(i),:);
   AB(i,countColumn+1) = B(listString(i));
end
for i = 1:size(A)
a(i,:) = -AB(i,1:size(A))/AB(i,i);
a(i,i) = 0;
b(i,1) = AB(i,countColumn+1)/AB(i,i);
end
eps = 1e-5;
X0 = b;
X1 = 2*b;
N=200;
k=0;
while k<N
   offset = 0;
   for i =1 :countColumn
    summ = 0;
       for j =1:countColumn
           if j>offset
           summ = summ+a(i,j)*X0(j);
           else
           summ = summ+a(i,j)*X1(j);
           end
       end
      X1(i) = b(i) +summ;
      offset = offset+1;
   end
   X0=X1;
   k = k+1;
end
X0
end