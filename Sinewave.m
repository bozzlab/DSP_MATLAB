A=2; %Amplitude
stoptime=1; 
T=1/44000; %Period
t=(0:T:stoptime-T); %Time
theta=0; %phase
Fc=440; %Frequency 
Fs=1/T; %Sampling 
x = A*cos((2*pi*Fc*t)+theta); %Sinewave Equation
%Plot
plot(t,x,'r'); 
xlabel('time(second)');
ylabel('Amplitude');
title('Square Signal');
axis([0.49, 0.5,-2,2]);
