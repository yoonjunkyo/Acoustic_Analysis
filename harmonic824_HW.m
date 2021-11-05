clear all
close all
clc

[x,y] = meshgrid(0:0.5:150,0:0.5:150);

t=linspace(0,0.1,100);

c=1500;

f1=10
w1=2*pi*f1;
k1=w1/c;

theta1 = pi/6;
kx1=k1*cos(theta1);
ky1=k1*sin(theta1);

f2=15
w2=2*pi*f2;
k2=w2/c;

theta2 = 2*pi/3;
kx2=k2*cos(theta2);
ky2=k2*sin(theta2);

##+exp(1j*(kx2*x+ky2*y-w2*t(m)))
for m=1:length(t)
imagesc(real((2j*(exp(-1j*(kx1*x-w1*t(m)))).*sin(ky1*y-w1*t(m)))+(2j*(exp(-1j*(kx2*x-w2*t(m)))).*sin(ky2*y-w2*t(m)))))
colorbar
drawnow
end

##+exp(1j*(kx2*x+ky2*y-w2*t(m)))
##for m=1:length(t)
##imagesc(real(exp(1j*(kx1*x+ky1*y-w1*t(m))) ))
##colorbar
##drawnow
##end