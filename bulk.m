%Assigment 1
%Question 2

function B = bulk(v)
%Input: v is a row vector
%Output: B is a matrix

    B = [v; v.^2; v.^3;];
end