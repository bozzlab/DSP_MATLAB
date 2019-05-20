clear all,close all
%% create t function
t=@(Tmax,fs) -Tmax:1/fs:Tmax; 
t_value=t(2,3);
%% Trigonometric function 
f0=100;
figure(3)
plot(t_value,sin(2*pi*f0*t_value),t_value,cos(2*pi*f0*t_value),t_value,tan(2*pi*f0*t_value),t_value,cot(2*pi*f0*t_value),t_value,asin(2*pi*f0*t_value),t_value,acos(2*pi*f0*t_value),t_value,atan(2*pi*f0*t_value))
axis([-2*pi,2*pi,-1,1])