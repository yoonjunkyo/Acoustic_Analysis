clear all
close all
clc

c1=340;
c2=1500;
Z1=415;
Z2=1.48*10^6;

theta_incident=linspace(0,pi/2,100);
theta_reflect=theta_incident;
theta_trans_sin=c2/c1*sin(theta_incident);

i=cos(theta_incident);
t=sqrt((1-(theta_trans_sin).^2));

R=((Z2.*i-Z1.*t)./(Z2.*i+Z1.*t));
T=(2*Z2.*i)./(Z2.*i+Z1.*t);

c3=1500;
c4=340;
Z3=1.48*10^6;
Z4=415;
theta_incident=linspace(0,pi/2,100);
##theta_reflect=theta_incident;
theta_trans_sin=c4/c3*sin(theta_incident);

i1=cos(theta_incident);
t1=sqrt((1-(theta_trans_sin).^2));

R1=((Z4.*i1-Z3.*t1)./(Z4.*i1+Z3.*t1));
T1=(2*Z4.*i1)./(Z4.*i+Z3.*t1);

c5=1500;
c6=1509;
Z5=1.48*10^6;
Z6=1500/c2;
theta_trans_sin=c6/c5*sin(theta_incident);

i2=cos(theta_incident);
t2=sqrt((1-(theta_trans_sin).^2));

R3=((Z6.*i2-Z5.*t2)./(Z6.*i2+Z5.*t2));
T3=(2*Z6.*i2)./(Z6.*i+Z5.*t2);

figure()
subplot(3,2,1)
plot(theta_incident,R)
title("reflection")
subplot(3,2,2)
plot(theta_incident,T)
title("transmission")
subplot(3,2,3)
plot(theta_incident,R1)
subplot(3,2,4)
plot(theta_incident,T1)
subplot(3,2,5)
plot(theta_incident,R3)
subplot(3,2,6)
plot(theta_incident,T3)