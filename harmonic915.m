clear all
close all
clc

theta11=linspace(0,90,200);
theta1=theta11*pi/180;

##rho1=1.29;
##c1=340;
##rho2=1000;
##c2=1500;

##rho1=1000;
##c1=1500;
##rho2=1.29;
##c2=340;

rho1=1000;
c1=1500;
rho2=1500;
c2=1509;

critical_theta=asin(c1/c2);
theta3=critical_theta*180/pi;

[r,t,Ri,Ti,Rp,Tp]=coefficient(rho1,c1,rho2,c2,theta1);

subplot(3,1,1)
plot(theta11,r,theta11,t,theta11,r+t)
grid on
legend('r','t','r+t')
xlabel('Incident angle(\theta_i)')

subplot(3,1,2)
plot(theta1*180/pi,Ri,theta1*180/pi,Ti,theta1*180/pi,Ri+Ti)
grid on
legend('Ri','Ti','Ri+Ti')
xlabel('Incident angle(\theta_i)')

subplot(3,1,3)
plot(theta1*180/pi,Rp,theta1*180/pi,Tp,theta1*180/pi,Rp+Tp)
grid on
legend('Rp','Tp','Rp+Tp')
xlabel('Incident angle(\theta_i)')
axis([0 90 0 1.1])
hold on;
line([theta3,theta3],[0,1.5]) #전반사가 일어나는 critical angle표시시
