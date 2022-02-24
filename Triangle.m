function matr=Triangle(matrix)
CountTurns=size(matrix,1)-1;
matr=matrix;
for i=1:CountTurns
   coord=[i,i];
   coeffs=FindCoeffs(coord,matr);
   matr=SumColumn(matr,coeffs,i);
end
end