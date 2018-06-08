clc;
clear all;
close all;
f=input('enter the sampling frequency');

for a=1:4
       if (a == 1) 
 fill='low';
   elseif( a == 2 )
 fill='high';
   elseif a == 3 
 fill='bandpass';
   elseif a == 4
   fill='bandstop'; 

       end
display(fill);
end