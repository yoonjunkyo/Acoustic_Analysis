clear all
close all
clc

p1=1033;
c1=1508;
p2=2*p1;
c2=1.12*c1;
p3=2*p1;
c3=1.24*c1;

z1=p1*c1;
z2=p2*c2;
z3=p3*c3;

h2=0.9*22.6;

f=linspace(0,10000,100);
k2=2*pi*f/c2;
X=k2*h2;
Rp=myfunc(z1,z2,z3,X);

Bp=-10*log(Rp);

subplot(2,1,1)
plot(f,Bp);
hold on;
subplot(2,1,2)
plot(f,Bp);
hold on;