function summ=SumColumn(matrix,coeffs,indexRow)
counter=1;
for i=indexRow:size(matrix,1)
    if (i==indexRow)
        continue
    else
        matrix(i,:)=matrix(i,:)+matrix(indexRow,:)*coeffs(counter);
    end 
counter=counter+1;
end
summ=matrix;
end