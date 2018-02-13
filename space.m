%Assignment 1
%Question 1
%Choo Wei Ken
%Dominic bin Alphonsus Dorhat

function gg = space(mm)
 %This function returns a mean of the squares of the first positive mm numbers 
 %Input: mm
 %Output: gg
 
     if (mm<0)
         % if mm is smaller than 0 , it will display a message
         disp('Please enter a positive integer.')
         
     else
         % sqr returns the square of all the numbers from 1 to mm
         sqr = (1:mm).^2;
         % gg returns the average of all the squares
         gg = sum(sqr)/mm;
         
end

     end
