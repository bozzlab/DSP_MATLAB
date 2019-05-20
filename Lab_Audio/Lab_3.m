clear all; 

[x,fs] = audioread('song.wav');
time = 5; % length in seconds

%x = x(1:time*fs,1);x = x(:); % t seconds from the beginning
%x = x(1:end,1);x = x(:); % Complete extract
x = ones(size(x)); % only a vector of ones for windows analysis

%% Window length
% M = 16;% Size of analysis windows
M = 512;

%% Window type
%w = hann(M)';% Analysis window
%w = blackmanharris(M)';
w = ones(1,M);

%% STFT parameters
%x = [zeros(M,1);x;zeros(M,1)]; % need to add zeros to allow the slidding window

I = (M); % overlap indice

L = M/2+1; % L to display a half of the spectrum

N = length(x); % signal length

Nt = fix( (N-M)/I ); %Number of DFT

% %% first version
%Xmat = [];
% 
% % Reconstruction de x
%xR = zeros(1,I*Nt + M);
% 
% % Spectrogram matrix building loop
% 
% for r=1:Nt;  % loop over the number of fragments
%    star = (r-1)*I +1; % fragment start
%    endd = star + M-1; % fragment end
%    tx = x(star:endd)'.*w; % fragment slicing
%    X = fft(tx,M); % fft fragment
%    Xmat = [Xmat X']; % Spectrogram Matrix building
%    xR(star:endd) = xR(star:endd) + ifft(X).*w;
% end
    
%% Second version
Xmat = zeros(M,Nt);% Matrix size predefined here

% Reconstruction de x
y = zeros(1,I*Nt + M);

% Spectrogram matrix building loop
for r=1:Nt;  % loop over the number of fragments
   star = (r-1)*I +1; % fragment start
   endd = star + M-1; % fragment end
   tx = x(star:endd)'.*w; % fragment slicing
   X = fft(tx,M); % fft of fragment
   Xmat(:,r) = X'; % Spectrogram Matrix building
   y(star:endd) = y(star:endd) + ifft(X).*w;  % Reconstruction of the x signal Ola method
end 

%% error function
Er = y(star:endd) + ifft(X).*w; 

%Er = erf(y)

freq = (0:M/2)/M*fs;
b = [0:Nt-1]*I/fs+(M/2)/fs;% average time of each fragmentds

%% Spectrogram
figure(1)
imagesc(b,freq,mag2db(abs(Xmat(1:L,:))))% spectrogram display
axis xy

%% Original and synthetised signal
figure(2)
% t = 0:1/fs:(N-1)/fs; % time axis
t = linspace(0,(N-1)/fs,N); % time axis
plot(t(1:length(y)),y./mean(Er(isfinite(Er))),t,x') % Comparison between original and synthesized signal

%% Reconstruction error
%figure(3)
%plot(t(1:length(y)),Er) % Comparison between original and synthesized signal
%std(Er(isfinite(Er))) % Signal reconstruction mean error
