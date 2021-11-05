clear all
close all
clc

t=linspace(0,10,1000);
g1 = sinc(10*(t-3));
g2 = sinc(10*(t-7));

#sinc(x) = sin(x)/x

subplot(2,2,1)
plot(t,g1)
subplot(2,2,2)
plot(t,g2)

Fs=1/(t(2)-t(1));
#N=length(t);
N=2048;
freq=[0:N-1]/N*Fs;
subplot(2,2,3)
plot(freq,abs(fft(g1,N)))
subplot(2,2,4)
plot(freq,abs(fft(g2,N)))

t2=[0:N-1]/Fs;
G1=fft(g1,N); #zero padding을 포함하여 fft해라
G11=G1.*exp(-1j*2*pi*freq*4); #exp(-jw*t0)
figure()
plot(t2,abs(ifft(G11)))
hold on;
plot(t,abs(g2))

G2=fft(g2);