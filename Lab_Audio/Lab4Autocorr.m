clear all; close all;

[x,fs] = audioread('song.wav');
time = 2; % length in seconds

x = x(1:time*fs,1);x = x(:); % t seconds from the beginning
% x = x(1:end,1);x = x(:); % Complete extract
%  x = ones(size(x)); % only a vector of ones for windows analysis

%% Window length
% M = 16;% Size of analysis windows
 M = 512;

%% Window type
   w = hann(M)';% Analysis window
%   w = blackmanharris(M)';
%  w = ones(1,M);

%% STFT parameters
x = [zeros(M,1);x;zeros(M,1)]; % need to add zeros to allow the slidding window

I = M/4; % overlap indice

L = M/2+1; % L to display a half of the spectrum

N = length(x); % signal length

Nt = fix( (N-M)/I ); %Number of DFT
    
%% Second version
Xmat = zeros(M,Nt);% Matrix size predefined here

% Reconstruction de x
y = zeros(1,I*Nt + M);

% Spectrogram matrix building loop
for r=1:Nt;  % loop over the number of fragments
   star = (r-1)*I +1; % fragment start
   endd = star + M-1; % fragment end
   tx = x(star:endd)'.*w; % fragment slicing
   [ Rx lag ] = xcorr(tx,tx);
   plot(lag,Rx);
end
