clear all
close all
clc

[x,y] = meshgrid(linspace(-10,10,200),linspace(-10,10,200)); #x,y 2차원 선언

##t=linspace(0,0.1,100);
t=0;

r=sqrt(x.^2+y.^2);
thata=atan2(y,x);

c=1500;
##t=0;
f=input('enter f : ');
t=linspace(0,10/f,50);
n=input('enter n : ');


for m=1:length(t)
w=2*pi*f;
k=2*pi*f/c;
z=besselh(n,1,k*r).*exp(1i*n*thata)*exp(-1j*w*t(m));
imagesc(real(z),'Xdata',[-10 10],'Ydata',[-10 10])
colormap(jet)
caxis([-1 1])
drawnow
end
