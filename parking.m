%Assignment 1 
%Question 3 
%Choo Wei Ken
%Dominic bin Alphonsus Dorhat
%This program requests the user to first input the type of parking lot,
%   then amount of weeks, days, hours and minutes parked. The program then
%   calculates the parking fee then displays the calculated amount.
%To run the program, type out 'parking' and a pop-up menu will appear, after selecting 
%   follow the onscreen instructions
%Functions are defined in separate m-files, 'LongTerm.m' and 'ShortTerm.m'
   
%Input: 'lot' as a menu to indicate parking type, and 'weeks', 'days', 'hours' and
%       'minutes' as integers
%Output: 'bill' as a floating point
%Functions: ShorTerm, LongTerm

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



