clear all
close all
clc

p1=1000;
c1=1500;
p2=1500;
c2=1509;
p3=2000;
c3=1800;

z1=p1*c1;
z2=p2*c2;
z3=p3*c3;

h2=1;

f=linspace(0,10000,100);
k2=2*pi*f/c2;
X=k2*h2;
Rp=reflect(z1,z2,z3,X);
Rl=transmit(z1,z2,z3,X);
Bp1=-10*log(Rp);
Bl1=-10*log(Rl);
subplot(2,1,1)
plot(f,Bp1);
hold on;
plot(f,Bl1);

################

p11=1000;
c11=1500;
p22=900;
c22=1076;
p33=950;
c33=1350;

z11=p11*c11;
z22=p22*c22;
z33=p33*c33;

h22=0.0025;

f2=linspace(0,1000000,10000);
k22=2*pi*f2/c22;
X2=k22*h22;
Rp2=myfunc(z11,z22,z33,X2);
Rl2=transmit(z11,z22,z33,X2);
Bp2=-10*log(Rp2);
Bl2=-10*log(Rl2);
subplot(2,1,2)
plot(f2,Bp2);
hold on;
plot(f2,Bl2);