clear all
close all
clc

[x,y] = meshgrid(0:0.5:150,0:0.5:150);

f=input('enter frequency : ')
c=1500;
theta = pi/6;
w=2*pi*f;
k=w/c;
kx=k*cos(theta);
ky=k*sin(theta);

imagesc(real(exp(1j*(kx*x+ky*y))))
colorbar
set('gca','YDir','rev')
##set('gca','YDir','norm')