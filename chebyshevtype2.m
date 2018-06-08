clc;
clear all;
close all;
rp=input('enter the pass band attenuation\n');
rs=input('enter the stop band attenuation\n');
f=input('enter the sampling frequency\n');
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
fp1=input('enter the pass band frequency');
fs1=input('enter the stop band frequency');
wp1=2*fp1/f;
ws1=2*fs1/f;
[n1,wn1]=cheb2ord(wp1,ws1,rp,rs);
[b1,a1]=cheby2(n1,rs,wn1,'low');
w1=0:0.001:pi;
[h1,cm1]=freqz(b1,a1,w1);
figure;
subplot(2,1,1);
plot(cm1/pi,20*log10(abs(h1)));
grid;
title('chebyshev lpf magnitude response');
ylabel('gain in db');
xlabel('normalized frequency');
subplot(2,1,2);
plot(cm1/pi,angle(h1));
grid;
title(' chebyshev lpf phase response');
ylabel('phase in radian');
xlabel('normalized frequency');
end