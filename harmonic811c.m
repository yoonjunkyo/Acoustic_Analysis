clear all
clc
##�巳���� �Ͼ�� ���� ���

##r=linspace(0,1,1000);
##theta=linspace(0,360,1000);

n=input('enter n : ');
k=10;

x=linspace(-1,1,1000);
y=linspace(-1,1,1000);

xarr = repmat(x,1000,1);
yarr = repmat(y',1,1000);

R=sqrt(xarr.^2+yarr.^2);
theta = atan2(yarr,xarr); #arctan���ϴ� �Լ�

z=besselj(n,k*R).*exp(j*n*theta);
figure()
##imagesc(real(z))
imagesc(real(z).*(R<=1))
axis equal


#2���� ���� ���� -> r ������, theta ������
##rarr = repmat(r,1000,1);
##tarr = repmat(theta',1000,1); #��������� theta�� transpose��
##
##y=besselj(n,k*rarr).*exp(n*tarr);
##
##imagesc(real(y))

##hold on;

##square ���� standing wave�� �̿�����
