function [Y,f]= Arrange_Audio(filepath,flag_aw) 
          
if nargin < 2
    flag_aw=0;
end   

[y,fs] = audioread([filepath]);
y=y(1:(fs*60));

y_new = reshape(y,[3*fs,numel(y)/(3*fs)]);
% t=(0:(3*fs-1))/fs;
y_new_avg=mean(y_new,2);
if flag_aw 
    [b,a]= Aweight(fs);
    y_new_avg=filter(b,a,y_new_avg);
 
end

   Y=fft(y_new_avg);
 f=(0:(numel(y_new_avg)-1))*fs/numel(y_new_avg);
