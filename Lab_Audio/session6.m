t = [0:0.5:5]; %A1
f = [0:0.2:2]; %A2 
x = ones(2,5); %A3
%y = zeros(2,5); %A3
%z=[x;y];

a=zeros(2,2);
b=ones(2,2);
k=[a,b,a];
x=ones(2,6);
z=[k;x;k];

invert = inv([4 -2 6; 2 8 2; 6 10 3])*[8;4;0]
