clear all
close all
t = linspace(0,8,100);
w0=2*pi*0.25;

d=pi/4

u1=cos(w0*t+d);
figure()
plot(t,u1,'r')
grid on;
hold on;

d=pi/4*2
u2=cos(w0*t+d);
plot(t,u2,'k')
hold on;

d=pi/4*3
u3=cos(w0*t+d);
plot(t,u3,'b')
hold on;

d=pi
u4=cos(w0*t+d);
plot(t,u4,'m')
hold on;

legend('d=\pi/4','d=\pi/2','d=3\pi/4','d=\pi')