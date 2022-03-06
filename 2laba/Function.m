function value=Function(left,right,Func)
 while ((right-left)>10^-4)
     center=(left+right)/2;
     if (Func(center)>0)
       right=center;
     else
       left=center;
     end
 end
center
end
