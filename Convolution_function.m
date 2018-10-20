function Z=convolution(x,h)
lenx= length(x);
lenh= length(h);
Z = zeros(1, lenx + lenh - 1);
for i = 1:lenx
    for u = 1:lenh
        Z(i+u-1) = Z(i+u-1) + x(i)*h(u);
    end
end 
