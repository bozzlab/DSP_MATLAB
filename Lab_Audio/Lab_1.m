%% Lab_1 Digital Audio Signal Processing 
%% 12 Mar 2019
c = 343
fs = 8000
Ts = 1/fs
[y,Fs] = audioread("speechEcho.wav");
t2 = (0:length(y)-1)/Fs; 

figure(1)
plot(t2,y);
title('Signal Processing')
xlabel('t')
ylabel('s')
%xticks([0:0.5:2])
grid;

figure(2);
[r,lag] = xcorr(y);
plot(lag,r)
title('correlation function')
xlabel('t')
ylabel('R[]')
grid; 

findpeaks(r,Fs,"MinPeakDistance",0.1);
[pks,locs,width,prom] = findpeaks(r,Fs,"MinPeakDistance",0,1);

[val,idx] = max(pks);
Td=locs(idx)-locs(idx-1);