[Y1, f]=Arrange_Audio('filepath');

X1=abs(Y1);
X_matrix=[X1....Xn];
X_mean=mean(X_matrix,2);
 
%plot
figure (1);
semilogx(X_mean);
axis([20,20000,-20,100]);
grid on;

%Frequency Respone
h=semilogx(f,20*log10(abs(Y1)),.......f,20*log10(abs(Yn)))
axis([20,20000,-100,57]);
hx =xlabel('Frequency (Hz)');
hy =ylabel('Amplitude [dB ref 1]');

%Assign Legend
lgd=legend('Signal');
lgd.FontSize = 10;
legend('Location','southwest','Orientation','vertical');
legend('boxon');
set(hx,'fontsize',25) ;% label front size
set(hy,'fontsize',25); % label front size

%Figure Task
ha=gca();
set(ha, 'fontsize',25);
 % label number
set(ha, 'position', [0.1, 0.14, 0.85, 0.8]);
set(h, 'LineWidth', 8);
grid on;
