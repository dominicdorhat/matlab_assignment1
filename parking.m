%Assignment 1 
%Question 3 
%Choo Wei Ken
%Dominic bin Alphonsus Dorhat
%This program requests the user to first input the type of parking lot,
%   then amount of weeks, days, hours and minutes parked. The program then
%   calculates the parking fee then displays the calculated amount.
%To run the program, type out 'parking' and a pop-up menu will appear, after selecting 
%   follow the onscreen instructions
   

%Input: lot as a menu to indicate parking type, and weeks, days, hours and
%       minutes as integers
%Output: bill as a floating point

lot = menu('Enter parking lot type:', 'Long Term', 'Short Term');
weeks = input('How many weeks: ');
days = input('How many days: ');
hours = input('How many hours: ');
minutes = input('How many minutes: ');

switch lot 
    
    %Long Term Parking
    case 1
        bill = LongTerm(weeks, days, hours, minutes);
        message = ['Parking Fee: RM', num2str(bill)];
        disp(message)
      
    %Short Term Parking
    case 2
        bill = ShortTerm(weeks, days, hours, minutes);
        message = ['Parking Fee: RM', num2str(bill)];
        disp(message)
        
end 


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