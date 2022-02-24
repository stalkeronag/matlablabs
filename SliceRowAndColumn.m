function del=SliceRowAndColumn(coordinate,matrix)
newmatrix=matrix;
newmatrix(coordinate(1),:)=[];
newmatrix(:,coordinate(2))=[];
del=newmatrix;
end