t=@(tmax,fs) -tmax:1/fs:tmax; 
t_output=t(2,44100);
%%
%figure(1)
%plot(t_output)
%%
%figure(2)
%plot(t_output,sqrt(t_output),t_output,exp(t_output),t_output,abs(t_output),t_output,log(t_output))
%%
f0=44100;
figure(3)
plot(t_output,sin(2*pi*f0*t_output),t_output,cos(2*pi*f0*t_output))
axis([-2*pi,2*pi,-1,1])

%,t_output,cos(2*pi*f0*t_output),t_output,cos(2*pi*f0*t_output),t_output,tan(2*pi*f0*t_output)),t_output,cot(2*pi*f0*t_output),t_output,asin(2*pi*f0*t_output),
%t_output,acos(2*pi*f0*t_output),
%t_output,atan(2*pi*f0*t_output),t_output,acot(2*pi*f0*t_output))


