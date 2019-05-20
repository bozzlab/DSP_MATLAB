%%% Q1 %%%%%


%clear all;
%fs = 44100;
%f0 = 500;
%%phi = [0;-pi/2; -pi; pi/2;];
%t = @(tmax,fs) - 0:1/fs:tmax;
%t = t(10/f0,fs);
%x = sin(2*pi*f0*t);
%figure(1)
%%plot(t,x);


%%%%%%%%% Q2 %%%%%%%%%


%fs = 44100;
%f0 = 500;
%t = @(tmax,fs) - 0:1/fs:tmax;
%t=t(10/f0,fs);
%T = 10*(1/f0);
%N = (T*fs)+1;
%freq = linspace(0,fs,N);
%x = sin(2*pi*f0*t);
%k = 20*log10(abs(fft(x)));
%figure(1)
%plot(t,k);

%%%% Q3 %%%%

%fs = 44100;
%f0 = 500;
%t = @(tmax,fs) - 0:1/fs:tmax;
%t=t(10/f0,fs);
%x = sin(2*pi*f0*t);
%b = 8;
%sample = 2^(b-1);
%st = x*sample;
%xq = ceil(st)/sample;
%figure(1)
%plot(t,xq,'*');



%%%% Q4 %%%%
%fs = 44100;
%f0 = 500;
%t = @(tmax,fs) - 0:1/fs:tmax;
%t=t(10/f0,fs);
%x = sin(2*pi*f0*t);
%b = 8;
%sample = 2^(b-1);
%st = x*sample;
%xq = ceil(st)/sample;
%figure(1)
%plot(t,x,'-.b');
%hold on;
%plot(t,xq,'*.r');
%
%


%%%%% Q5 %%%%%

%soundsc(x,44100);
%soundsc(xq,44100);

%%%%% Q6 %%%%%

%fs = 44100;
%f0 = 500;
%t = @(tmax,fs) - 0:1/fs:tmax;
%t=t(10/f0,fs);
%x = sin(2*pi*f0*t);
%b = 8;
%sample = 2^(b-1);
%st = x*sample;
%xq = ceil(st)/sample;
%figure(1)
%plot(t,20*log10(abs(fft(xq))));


%%%%% Q7 %%%%%

[y,Fs] = audioread('Sinesweep.wav');

xFs=44100;
xN=32;
audiowrite('Out.wav',y,xFs,'BitsPerSample',xN);
[y2,Fs2] = audioread('Out.wav');
b = 32;
sample = 2^(b-1)-1;
xs = ceil(y2*sample)/sample;

figure(1)
subplot(2,1,1);plot(y);
subplot(2,1,2);plot(xs);


%%%% Q8 %%%

fx_con = Qx_x(xs,8);
fx_con(fx_con<0) = 0;
figure(2);
plot(fx_con);




































