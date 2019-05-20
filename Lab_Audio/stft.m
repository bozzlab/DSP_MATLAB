[x,fs] = audioread('song.wav');
x = x(1:10*fs,1);x = x(:);

%M = 16;% Size of analysis windows
M = 2^12;

x = [zeros(M,1);x;zeros(M,1)]; % need to add zeros to allow the slidding window

%w = hann(M); % Analysis window
w = ones(1,M);

I = M; % overlap indice

L = M/2+1;

N = length(x); % signal length

Nt = fix( (N-M)/I ); %Number of DFT
a = [];
for r=1:Nt; % loop over the number of fragments
star = (r-1)*I +1; % d�but de trame
endd = star + M -1; % fin de trame
tx = x(star:endd).*w; % calcul de la trame 
X = fft(tx,M);% tfd � l'instant b
a(r)=X(r)
end

freq = (0:M/2)/M*fs;
b = [0:Nt-1]*I/fs+(M/2)/fs;% average time of each fragment

hold on;
figure; 
imagesc(b,freq,db(abs(a(1:L,:))))% spectrogram display
axis xy
