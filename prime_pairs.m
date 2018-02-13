function p = prime_pairs(n)
    p = primes(1e5);
    p = p(isprime(p+n));
    
    if isempty(p)
        disp('-1');
    else
       p = p(1);
    end
    
end