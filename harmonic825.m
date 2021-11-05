clear all
close all
clc

n=input('enter n : ');
k=10;

x=linspace(0,10,1000);
plot(x,besselj(n,x),'b')
hold on
plot(x,bessely(n,x),'b--')

##y=linspace(-2,1,1000);
##
##xarr = repmat(x,1000,1);
##yarr = repmat(y',1,1000);
##
##R=sqrt(xarr.^2+yarr.^2);
##theta = atan2(yarr,xarr);
##
##z=besselj(n,k*R).*exp(j*n*theta);
##figure()
##plot(x,z)
####imagesc(real(z))
####imagesc(real(z).*(R<=3))
##axis equal
axis([0 10 -2 1])