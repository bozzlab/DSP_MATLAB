%Lab5
close all,clear all
a =[...]; % X(z)
b =[...]; % y(z)
w = 0:pi/99:pi;
h = freqz(a,b,w);
figure(1)
subplot(2,2,1),plot(w/pi,real(h));grid
xlabel('\omega/\pi'),ylabel('Amplitude'),title('Real part')
subplot(2,2,2),plot(w/pi,imag(h)),grid
xlabel('\omega/\pi'),ylabel('Amplitude'),title('Imaginary part')
subplot(2,2,3),plot(w/pi,abs(h)),grid
xlabel('\omega/\pi'),ylabel('Magnitude'),title('Magnitude Spectrum')
subplot(2,2,4),plot(w/pi,angle(h)),grid
xlabel('\omega/\pi'),ylabel('Phase, radians'),title('Phase Spectrum')
impulse= impz(a,b);
figure(2),stem(impulse),grid
figure(3),zplane(a,b),grid 
