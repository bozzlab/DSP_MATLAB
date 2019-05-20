f0 = 500;
phi = [0;-pi/2;-pi;pi/2];
t = @(tmax,fs) 0:1/fs:tmax;
t = t(3/f0,44100);
k_1 = sin(2*pi*f0*t+pi/4);
f1 = 500*2;
k_2 = k_1 + sin(2*pi*f1*t+pi/4)
figure(1)
plot(t,k_2);
xlabel('Time');
ylabel('Amplitude (sine)');
title('sine function');
