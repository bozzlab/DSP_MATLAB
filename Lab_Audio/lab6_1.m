clear all;
fs = 44100;
f0 = 1000;
phi = [0;-pi/2; -pi; pi/2;];
t = linspace(0,3/f0,1000); 
x = sin(2*pi*f0*t+phi(1));
y = sin(2*pi*f0*t+phi(2));
z = sin(2*pi*f0*t+phi(3));

t1 = phi(1)./(2*pi*f0)
t2 = phi(2)./(2*pi*f0)
t3 = phi(3)./(2*pi*f0)
t4 = phi(4)./(2*pi*f0)

figure(1)
plot(t,x);
hold on
plot(t,y);
plot(t,z);