function value=GausMethod(Matrix)
sizeMatrix = size(Matrix);
countString = sizeMatrix(1);
countColumns = sizeMatrix(2);
resultMatrix = zeros(countString,countColumns );
currentMatrix = Matrix;
A = Matrix(:,[1:size(currentMatrix,1)]);
listIndex=zeros(countString);
index = 1;
for i=1:sizeMatrix(1)    
    indexs =  MaxAbs(currentMatrix(:,1));
    for j=1:size(currentMatrix,1)
        if j==indexs(1)
            continue;
        end
        coeff = currentMatrix(j,1)/currentMatrix(indexs,1);
        currentMatrix(j,:) = currentMatrix(j,:) - currentMatrix(indexs,:)*coeff;
    end
    resultMatrix(i,[index:countColumns]) = currentMatrix(indexs,:);
    currentMatrix(indexs,:) = [];
    currentMatrix(:,1) = []; 
    index = index +1;
end
value = flip(ReverseTurn(resultMatrix));
end