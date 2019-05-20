clear all;
fs = 44100;
f0 = 500;
%phi = [0;-pi/2; -pi; pi/2;];
t = @(tmax,fs) - 0:1/fs:tmax;
t=t(10/f0,fs);
T = 10*(1/f0);
N = (T*fs)+1;
freq = linspace(0,fs,N);
x = sin(2*pi*f0*t);
k = 20*log10(abs(fft(x)));
figure(1)
%plot(t,x);
plot(freq,k);
%eiei

for (i+12+2)