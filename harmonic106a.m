clear all
close all
clc

[y,Fs] = audioread('asdf.wav');

size(y);
##soundsc(y,Fs)
##plot(y(:,1))

N=size(y,1);
fftzero(y(:,1),N,1/Fs);
hold on

a=[262 294 330 349 392 440 494 523];
b=2700;
##plot(a,b,'r')

t = [0:N-1]/Fs;
shift_func=repmat(exp(-1j*2*pi*50*t).',1,2);
y2 =real(y.*shift_func);
##soundsc(y2,Fs)

k=N/1800;
Nz=2048;
freq2=[-Nz/2;Nz/2-1]/Nz*Fs;

Spectrum=zeros(Nz,1800);
for m=1:1800
Spectrum(:,m)=fftshift(fft(y(1+(m-1)*k:m*k,1),Nz));
end
imagesc(abs(Spectrum),'XData',[t(1) t(end)],'YData',[freq2(1) freq2(end)])
axis([0 6 0 2000])