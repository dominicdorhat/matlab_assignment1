%Function definition for ShortTerm 
%The function is called in the main program with 4 arguments, (w, d, h, and m).

function balance = ShortTerm(w, d, h, m)
   
    %converts hours to minutes, and rounds up to nearest integer
    minutes = (((h*60) + m)-30);
    minutes_price = ceil(minutes/20)*1.5;
    week_price = 7 * 35;
    
    %if daily maximum is reached
    if minutes_price >= 35
        balance = (week_price*w) + (35*d);
        
    %if all input is 0
    elseif w == 0 && d == 0 && h == 0 && m == 0
        balance = 0;        
    else 
        balance = (week_price*w) + (35*d) + minutes_price;
    end
end