clear all
close all
clc

Dt = 0.05;
t = [0:Dt:3];
y=sin(10*pi*t);

N = length(t);
Df = 1/(N*Dt);
f = [0:N-1]*Df;

##figure()
##plot(f,abs(fft(y)))

##plot(f,fft(y,61),'r')
##plot(f,fft(y,128),'b')
##plot(f,fft(y,256),'y')

fftzero(y,61,Dt)
fftzero(y,128,Dt)
fftzero(y,256,Dt)