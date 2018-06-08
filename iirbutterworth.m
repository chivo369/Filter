clc;
clear all;
close all;
f=input('enter the sampling frequency\n');
rs=input('enter the stop band atttenuation\n');
rp=input('enter the pass band attenuation\n');
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
fp1=input('enter the passband frequency\n');
fs1=input('enter the stop band frequency\n');
wp1=2*fp1/f;
ws1=2*fs1/f;
[n1,wn1]=buttord(wp1,ws1,rp,rs);
[b1,a1]=butter(n1,wn1,fill);
display(n1);
w1=0:.001:pi;
figure;
[x,y]=freqz(b1,a1,w1);  
subplot(2,1,1);
plot(abs(x));
subplot(2,1,2);
plot(angle(x));
end
