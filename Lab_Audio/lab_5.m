t = @(tmax,fs) - 0:1/fs:tmax;
t = t(1,44100);
sin_150 = 100*sin(2*pi*150*t);
sin_350 = 50*sin(2*pi*350*t);
sin_5000 = 20*sin(2*pi*5000*t);
k = sin_150+sin_350+sin_5000;
x = fft(k);
figure(1)
plot(t,k)
figure(2)
plot(abs(x))