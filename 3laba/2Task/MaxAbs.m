function IndexmaxElement = MaxAbs(array)
IndexmaxElement = 1;
maxElement = array(1);
for i=1:size(array,1)
    if  abs(array(i))>abs(maxElement)
          maxElement = array(i);
          IndexmaxElement = i;
    end
end
end