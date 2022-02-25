A = [2.34,-4.21,-11.61;8.04,5.22,0.27;3.92,-7.99,8.37];
B = [14.41;-6.44;55.56];
AB = [A B]; 
AB = AB([2 3 1],:) 
for i = 1:size(A) 
    a(i,1:3) = -AB(i,1:3)/AB(i,i);
    a(i,i) = 0;
    b(i,1) = AB(i,4)/AB(i,i);
end
eps = 1e-4;
X0 = b; 
X1 = a*X0+b;
while norm(X1-X0)>eps
    X0 = X1;
    X1 = a*X0+b;
end;
X = X1
