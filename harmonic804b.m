clear all
close all
t = linspace(0,20,1000);
w0=1;
A=10;

r=0
w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
plot(t,x,'r')
hold on;

r=0.2
w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
plot(t,x,'b')
hold on;

r=0.7
w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
plot(t,x,'k')
hold on;


r=1
w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
plot(t,x,'g')
xlabel('Time(secon)')
ylabel('Displacement')
grid on
hold on;