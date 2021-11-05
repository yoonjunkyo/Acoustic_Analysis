clear all
clc

[x,y] = meshgrid(0:0.5:150,0:0.5:150);

d=input('d : ')*pi
f=10;
c=1500;
theta = pi/6;
w=2*pi*f;
k=w/c;
kx=k*cos(theta);
ky=k*sin(theta);

figure()
imagesc(real(exp(1j*kx*x).*(exp(1j*ky.*y)+exp(-1j*ky.*y-d))))
colorbar

#term이 -2~2 -> 보강과 상쇄의 효과