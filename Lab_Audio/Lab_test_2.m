[x,fs] = audioread('song.wav');
window = fix(40*fs/1000);
[S, f, t] = specgram (x, 512, fs, window);
plot(f,S,t)