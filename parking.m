lot = input('Enter parking lot[1 = long, 0 = short] :');
weeks = input('How many weeks :');
days = input('How many days :');
hours = input('How many hours :');
minutes = input('How many minutes :');

switch lot 
    %long
    case 1
        bill = LongTerm(weeks,days,hours,minutes);
        x = ['Fee: RM', num2str(bill)];
        disp(x)
      
    %short
    case 0
        bill = ShortTerm(weeks, days, hours, minutes);
        x = ['Fee: RM', num2str(bill)];
        disp(x)
     otherwise 
        disp('Invalid input')
    
end 

        
function balance = ShortTerm(w, d, h, m)
    minutes = (((h*60) + m)-30);
    minutes_price = ceil(minutes/20)*1.5;
    week_price = 7 * 35;
    if minutes_price >= 35
        balance = (week_price*w) + (35*d);
    else 
        balance = (week_price*w) + (35*d) + minutes_price;
    end
        
    

end

function cost = LongTerm(weeks, days, hours,minutes)
    
    hours = hours + (minutes/60);
    hours = ceil(hours);
    if (hours>=6)
        cost = weeks*52+ days*8 + 8;
    else
        cost = weeks*52 + days*8 + 1.5 + (hours-1)*1;
    end
end