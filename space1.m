%Assignment 1
%Question 1_2

function gg = space1(mm)
 %This function returns a mean of the squares of the first positive mm numbers 
 %Input: mm
 %Output: gg
 if mm > 0
  sqr = (1:mm).^2;
  gg = sum(sqr)/mm;  
 elseif mm < 0
     disp('Please enter a positive integer.')
end