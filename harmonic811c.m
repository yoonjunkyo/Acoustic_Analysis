clear all
clc
##드럼에서 일어나는 진동 모드

##r=linspace(0,1,1000);
##theta=linspace(0,360,1000);

n=input('enter n : ');
k=10;

x=linspace(-1,1,1000);
y=linspace(-1,1,1000);

xarr = repmat(x,1000,1);
yarr = repmat(y',1,1000);

R=sqrt(xarr.^2+yarr.^2);
theta = atan2(yarr,xarr); #arctan구하는 함수

z=besselj(n,k*R).*exp(j*n*theta);
figure()
##imagesc(real(z))
imagesc(real(z).*(R<=1))
axis equal


#2차원 변수 정의 -> r 가로축, theta 세로축
##rarr = repmat(r,1000,1);
##tarr = repmat(theta',1000,1); #가로행렬인 theta를 transpose함
##
##y=besselj(n,k*rarr).*exp(n*tarr);
##
##imagesc(real(y))

##hold on;

##square 에선 standing wave를 이용함함
