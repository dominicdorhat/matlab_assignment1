%Assigment 1
%Question 2
%Choo Wei Ken
%Dominic bin Alphonsus Dorhat
%This function takes a row vector and returns a matrix whose first column
%   is the elements of the row vector, the second column the squares of the
%   row vector, and the third column as the cubes of the row vector
%To call the function, type out 'bulk(v)' where v is a row vector

%Input: v as a row vector
%Output: B as a matrix

function B = bulk(v)

    B = [v; v.^2; v.^3;];
end