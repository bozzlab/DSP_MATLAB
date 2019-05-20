%% 1
clear all
f0 = 500;
T=1/f0;
fs = 44100;
t = @(Tmax,fs) - 0:1/fs:Tmax;
t = t(T*300,fs);
x = sin(2*pi*f0*t);
figure(1)
plot(t,x)

%% 2
figure(2)
plot(t,20*log10(abs(fft(x))))

%% 3
b = 4;
sample_max = 2^(b-1);
l = x*sample_max;
xs = ceil(l)/sample_max;
figure(3)
plot(t,xs,'x');

%% 4

figure(4)
plot(t,xs,'x');
hold on;
plot(t,sin(2*pi*f0*t));

%% 5

soundsc(x,44100);
soundsc(xs,44100);

%% 6
figure(6)
plot(t,20*log10(abs(fft(x))))