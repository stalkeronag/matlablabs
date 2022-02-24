function listcoeffs=FindCoeffs(coordinate,matrix)
CountRow=size(matrix,1);
listcoeffs=zeros(1,CountRow-1);
counter=1;
for i=coordinate(1):CountRow
    if (i==coordinate(1))
        continue;
    else
        listcoeffs(counter)=-matrix(i,coordinate(2))/matrix(coordinate(1),coordinate(2));
    end 
counter=counter+1;
end
end