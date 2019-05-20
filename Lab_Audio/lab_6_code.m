close all;
clear all;
%% 1
% f0 = 500;
% phi = [0;-pi/2;-pi;pi/2];
% t = @(tmax,fs) 0:1/fs:tmax;
% t = t(3/f0,44100);
% 
% 
% 
% plot(t,sin(2*pi*f0*t+phi(1)));
% hold on;
% plot(t,sin(2*pi*f0*t+phi(2)));
% plot(t,sin(2*pi*f0*t+phi(3)));
% plot(t,sin(2*pi*f0*t+phi(4)));
% xlabel('Time');
% ylabel('sine(x)');
% title('Plot of the sine function');

%% 2
% t1 = phi(1)./(2*pi*f0)
% t2 = phi(2)./(2*pi*f0)
% t3 = phi(3)./(2*pi*f0)
% t4 = phi(4)./(2*pi*f0)

%% 3


f0 = 500;
phi = [0;-pi/2;-pi;pi/2];
t = @(tmax,fs) 0:1/fs:tmax;
t = t(3/f0,44100);
k_1 = sin(2*pi*f0*t+phi(1));
f1 = 500*2;
k_2 = k_1 + sin(2*pi*f1*t+phi(1))
figure(1)
plot(t,k_2);
xlabel('Time');
ylabel('Amplitude (sine)');
title('sine function');


%% 4
% f0 = 500;
% phi = [0;-pi/2;-pi;pi/2];
% t = @(tmax,fs) 0:1/fs:tmax;
% t = t(3/f0,44100);
% r1 = sin(2*pi*f0*t+pi/8);
% f1 = 500*2;
% r2 = r1 + sin(2*pi*f1*t+pi/4)
% plot(t,r2);
% 
% xlabel('Time');
% ylabel('sine(x)');
% title('Plot of the sine function');

%% 5

% f0 = 500*2;
% phi = [0;-pi/2;-pi;pi/2];
% t = @(tmax,fs) 0:1/fs:tmax;
% t = t(3/f0,44100);
% 
% 
% plot(t,sin(2*pi*f0*t+phi(1)));
% hold on;
% plot(t,sin(2*pi*f0*t+phi(2)+pi/4));
% plot(t,sin(2*pi*f0*t+phi(3)));
% plot(t,sin(2*pi*f0*t+phi(4)));
% xlabel('Time');
% ylabel('sine(x)');
% title('Plot of the sine function');
% 
% 
% 
% xphi = 
% s(t) = sin(2*pi*f0*t+xphi)