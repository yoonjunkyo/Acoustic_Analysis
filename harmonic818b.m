clear all
close all
clc

[x,y] = meshgrid(0:0.5:150,0:0.5:150);

t=linspace(0,0.05,20);

f=input('enter frequency : ')
c=1500;
theta = pi/6;
w=2*pi*f;
k=w/c;
kx=k*cos(theta);
ky=k*sin(theta);

for m=1:length(t)
imagesc(real(exp(1j*(kx*x+ky*y-w*t(m)))))
colorbar
drawnow
end