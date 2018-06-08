clc;
clear all;
close all;
for a=1:4
       if (a == 1) 
 fill='low';
   elseif( a == 2 )
 fill='high';
   elseif a == 3 
 fill='bandpass';
   elseif a == 4
   fill='stop'; 
       end
display(fill);
wc=input('enter normalised frequency');
n=input('enter the value of n');
b=fir1(n,wc/pi,fill,hann(n+1));
w=0:0.001:pi;
h=freqz(b,1,w);
figure;
subplot(2,1,1);
plot(w/pi,20*log10(abs(h)));
grid on;
xlabel('normalised frequency');
ylabel('magnitude in db');
title('fir magnitude response');
subplot(2,1,2);
plot(w/pi,angle(h));
grid on;
xlabel('normalised frequency');
ylabel('phase in radian');
title('fir phase response');
end