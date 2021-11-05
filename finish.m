clear all
close all
clc

##t=linspace(0,10,2000);
##theta=pi/2;
##theta2=pi/2;
##a=1;
##p=3;
##q=7;
##y=theta*sin(q*t+theta2);
##r=a*sin(p*t);
##polar(y,r)

##theta=linspace(0,2*pi,720);
##r=2-2*sin(theta)+sin(theta).*(sqrt(abs(cos(theta))))./(sin(theta)+1.4);
##x=r.*cos(theta);
##y=r.*sin(theta);
##plot(x,y)


x=repmat(linspace(0,1,1000),1000,1);
theta=repmat(linspace(-2*pi,15*pi,1000).',1,1000);
theta2=pi/2*exp(-theta/(8*pi));
y=(1.95653*x).^2.*(1.27689*x-1).^2.*sin(theta2);
X=1-0.5*(5/4*(1-mod(3.6*theta,2*pi)/pi).^2-1/4).^2;
r=X.*(x.*cos(theta)+y.*sin(theta2));
xx=r.*sin(theta);
yy=r.*cos(theta);
zz=X.*(x.*cos(theta2)-y.*cos(theta2));

surf(xx,yy,zz,'EdgeColor','None')
colormap(jet)
axis equal
axis off