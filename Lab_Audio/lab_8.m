clear all;
%%% 1 %%% 
[y,fs] = audioread('Sinesweep.wav');
S = size(y);
SNR=15;
x=SNR*randn(S(1),1);
sigma_s = std(y);
sigma_w = sigma_s * 10^(-15/20);
k = sigma_w.*randn(S(1),1);
SW = y+k;
%figure(1) %%% noise and sine 
%plot(20*log10((abs(SW))));
%hold on 
%plot(20*log10(abs(y)));
%
%figure(2) %%% Mag res 
%db_y=mag2db(abs(y));
%db_wn=mag2db(abs(k));
%plot(db_wn)
%hold on
%plot(db_y)

%%% 2 %%%

size = 1024;
wind = hanning(size);
noverlab = size/2;
nfft = size;
 
%[STFT ,F ,T] = stft(SW,wind,noverlab,nfft,fs);
%imagesc(T,F,20*log10(abs(STFT)));
%set(gca,'YDir','Normal');


%%% 3 %%%


[STFT ,f ,t] = stft(k,wind,noverlab,nfft,fs);
imagesc(t,f,20*log10(abs(STFT)));
set(gca,'YDir','Normal');

%%% 4 %%%

lambda = var(k);



































