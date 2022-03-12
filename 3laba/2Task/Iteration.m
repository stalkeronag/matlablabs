function x = Iteration(A,B)
  AB = [A B];
  countRows =size(A,1);
  countColumn =size(A,2);
  listString = zeros(countColumn,1);
for i =1 :countColumn
   listString(i) =  MaxAbs(A(:,i));
   AB(i,1:countColumn) = A(listString(i),:);
   AB(i,countColumn+1) = B(listString(i));
end
AB
for i = 1:size(A)
a(i,:) = -AB(i,1:size(A))/AB(i,i);
a(i,i) = 0;
b(i,1) = AB(i,countColumn+1)/AB(i,i);
end
eps = 1e-6;
X0 = b;
X1 = a*X0+b;
while norm(X1-X0)>eps
X0 = X1;
X1 = a*X0+b;
end
X = X1
end