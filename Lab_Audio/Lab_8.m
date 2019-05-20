clear all 

[y,fs] = audioread('track.wav')
L = size(y);
sigmas = std(y)
sigmaw = sigmas*10^(-15/20)
wn = sigmaw*randn(L(1),1);
sw = y+wn;
%%%1
%dby=mag2db(abs(y));
%dbwn=mag2db(abs(wn));
%plot(dby)
%hold on
%plot(dbwn)

%%2
wsize = 1024;
wind = hanning(wsize);
noverlab = wsize/2;
nfft = wsize;
% 
%[STFT ,f ,t] = stft(sw,wind,noverlab,nfft,fs);
%imagesc(t,f,20*log10(abs(STFT)));
%set(gca,'YDir','Normal');
% 
% %%3
[STFT ,f ,t] = stft(wn,wind,noverlab,nfft,fs);
imagesc(t,f,20*log10(abs(STFT)));
set(gca,'YDir','Normal');

% %%4
% lamda = var(wn);