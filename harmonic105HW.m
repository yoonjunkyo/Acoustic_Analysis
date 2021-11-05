clear all
close all

[y,Fs] = audioread('example.wav');

##size(y)
##soundsc(y,Fs)
##plot(y(:,1))

N=264600;

a=165000;
b=195000;
Index=[1:N];
Window=(Index>=a)&(Index<=b);
y2=y(:,1).*Window';

fftzero(y2(:,1),N,1/Fs);