function ad=ReverseTurn(matrix)
countTurn=size(matrix,1);
b=matrix(:,countTurn+1);
list=zeros(1,size(matrix,1));
counter=1;
for i=countTurn:-1:1
  difference=countTurn-i;
  summ=0;
  j=1;
  while(difference>0) 
       summ=summ+matrix(i,i+difference)*list(j);
       j=j+1;
       difference=difference-1;
  end
  list(counter)=(b(i)-summ)/matrix(i,i);
  counter=counter+1;
end
ad=list;
end