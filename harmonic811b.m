clear all
clc

x=linspace(0,10,100);
n=input('enter n : ');

##plot(x,besselj(n,x)) #bessel J함수

##plot(x,bessely(n,x)) #bessel Y함수
##axis([0 10 -5 1]) #x범위 0~10 y범위 -5~1

hold on;

sbesselj = sqrt(pi/(2.*x)).*besselj(n+0.5,x); #spherical bessel함수