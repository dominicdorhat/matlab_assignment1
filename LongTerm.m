%Function definition for LongTerm
%The function is called in the main program with 4 arguments, (w, d, h, and m).

function cost = LongTerm(w, d, h, m)
    
    %convert minutes to hours, and rounds up to the nearest integer
    hours = ceil(h + (m/60));
    
    %if daily maximum is reached
    if hours >= 8
        cost = w*52+ d*8 + 8;
        
    %if all input is 0    
    elseif w == 0 && d == 0 && h == 0 && m == 0
        cost = 0;
    else
        cost = w*52 + d*8 + 1.5 + (hours-1)*1;
    end
end
