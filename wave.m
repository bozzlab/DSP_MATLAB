A=2; %Amplitude
stoptime=1; %Sample range
T=1/44000; %Period
t=(0:T:stoptime-T); %Time
theta=0; %Phase
Fc=440; %Frequency 
Fs=1/T; %Freq sampling 

% Wave 

x = A*cos((2*pi*Fc*t)+theta); %Sinewave 
x = A*sawtooth((2*pi*Fc*t)+theta); %Sawtoothwave 
x = A*square((2*pi*Fc*t)+theta); %Squarewave 


%Plot
plot(t,x,'r'); 
xlabel('time(second)');
ylabel('Amplitude');
title('Square Signal');
axis([0.49, 0.5,-2,2]);
