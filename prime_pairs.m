%Assignment 1 
%Question 4
%Choo Wei Ken
%Dominic bin Alphonsus Dorhat
%This function returns the smallest prime number smaller than 100,000, p if (p+n) is a prime number,
%   otherwise it returns -1 if (p+n) is not a prime number
%To call the function, type out "prime_pairs(n)" where n = positive integer 

%Input: n as a scalar integer 
%Output: p as a prime number smaller than 100,000, or -1

function p = prime_pairs(n)

    %returns an array of prime numbers less or equal to 100,000
    p = primes(1e5);
    %returns an array of 1s for prime elements and 0s for non-prime
    %   elements
    %compares the array of 1s and 0s with array p
    p = p(isprime(p+n));
    
    %checks if p is empty 
    if isempty(p)
        p = -1;
    elseif ~isempty(p)
       p = p(1);
    end
    
end