% %% 1
% clear all
% f0 = 500;
% T=1/f0;
% fs = 44100;
% t = @(Tmax,fs) - 0:1/fs:Tmax;
% t = t(T*10,fs);
% %t = t(T*300,fs);
% x = sin(2*pi*f0*t);
% figure(1)
% plot(t,x)
% 
% %% 2
% figure(2)
% plot(t,20*log10(abs(fft(x))))
% 
% %% 3
% b = 8;
% sample_max = 2^(b-1);
% l = x*sample_max;
% xs = ceil(l)/sample_max;
% figure(3)
% plot(t,xs,'x');
% 
% %% 4
% 
% figure(4)
% plot(t,xs,'x');
% hold on;
% plot(t,sin(2*pi*f0*t));
% 
% %% 5
% 
% soundsc(x,fs);
% pause(1)
% soundsc(xs,fs);
% 
% %% 6
% figure(6)
% plot(t,20*log10(abs(fft(xs))))

%% 7

[y,Fs] = audioread('Test_in_lab_7.wav');
figure(7)
subplot(2,1,1);plot(y);

xFs=44100;
xN=8;
audiowrite('Test_out_lab_7.wav',y,xFs,'BitsPerSample',xN);
[y2,Fs2] = audioread('Test_out_lab_7.wav');
b = 8;
sample_max = 2^(b-1)-1;
xs = ceil(y2*sample_max)/sample_max;
subplot(2,1,2);plot(xs,'x');

%%% 8
%[y2,Fs2] = audioread('test.wav');
%b = 8;
%sample_max = 2^(b-1)-1;
%xs = ceil(y2*sample_max)/sample_max;
%subplot(2,1,2);plot(xs,'x');
%
%re = Qx_x(xs,8);
%re(re<0) = 0;
%figure(8);
%plot(re);
%
%%% 9
%
%rebi = de2bi(re,b,'left-msb');      
%
%Srebi = cellstr(num2str(rebi));
%
%fileID = fopen('Lab9.txt','w');
%fprintf(fileID,'%s\n',Srebi{:});
%fclose(fileID);