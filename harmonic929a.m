clear all
close all
clc

Dt = 1/40; #°¡Àå Å« Hz -> 75Hz
t = [0:Dt:3];
y=sin(3*pi*t)+cos(10*pi*t)+sin(15*pi*t).*cos(15*pi*t);


fftzero(y,256,Dt)
fftzero(y,512,Dt)
fftzero(y,1024,Dt)