%Assignment 1
%Question 1
%Choo Wei Ken
%Dominic bin Alphonsus Dorhat
%This function returns a mean of the squares of the first positive mm numbers 
%To call the function, type out 'space(mm)' , where mm is an integer

%Input: mm as an integer
%Output: gg as an integer

function gg = space(mm)

 
     if (mm<0)
         % if mm is smaller than 0 , it will display an error message
         disp('Please enter a positive integer.')
         
     else
         % sqr returns the square of all the numbers from 1 to mm
         sqr = (1:mm).^2;
         % gg returns the average of all the squares of sqr
         gg = sum(sqr)/mm;
         
     end

end
