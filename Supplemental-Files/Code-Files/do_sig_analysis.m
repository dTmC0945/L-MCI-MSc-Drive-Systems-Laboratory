function [f,P1,timeVector,voltageVector_LP]=do_sig_analysis(timeVector,voltageVector)

Fs=1/mean(diff(timeVector));
T = 1/Fs;             % Sampling period       
L = length(voltageVector);             % Length of signal
t = (0:L-1)*T;        % Time vector

voltageVector_LP = doFilter(voltageVector,Fs);
%plot(timeVector,voltageVector,timeVector,voltageVector_LP);

X=voltageVector;
Y = fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
%figure
%plot(f,P1) 
end