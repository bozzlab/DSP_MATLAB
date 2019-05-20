phi = @(np,N) linspace(0,2*pi*np,N);
%phi(2,16)
pp = phi(100,512)
x = sin(pp);
Y=fft(x);
fs = 8000;
plot(pp,abs(Y));

%%%%%%%%%%%%%%%%%%%%%%%%%

