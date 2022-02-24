function coordinate=FindRowAndColumn(matrix,element)
NumberRows=size(matrix,1);
NumberCol=size(matrix,2);
for i=1:NumberRows
    for j=1:NumberCol
        if (matrix(i,j)==element)
            coordinate=[i,j];
        end
    end
end
ad
end