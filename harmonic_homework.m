clear all
close all
t = linspace(0,100,1000);
w0=1;
A=10;

r=0;
f1 =input('enter frequency1 : ' ); # f입력받기,
f2 = input('enter frequency2 : ' );
d = input('enter phase : ' );
#f1:f2=1:1
figure()
hold on;
#w1=sqrt(w0^2-r^2);
w1=1;
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(w1*t);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(w1*t+pi/4);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(w1*t+pi/3);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(w1*t+pi/2);
plot(x,y)

axis equal;

f1:f2=1:2
figure()
hold on;
w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(2*w1*t);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(2*w1*t+pi/2);
plot(x,y)



w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(2*w1*t+pi/3);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(2*w1*t+pi/2);
plot(x,y)



#f1:f2=2:3
figure()
hold on;
w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(3/2*w1*t);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(3/2*w1*t+pi/4);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(3/2*w1*t+pi/3);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(3/2*w1*t+pi/2);
plot(x,y)

#f1:f2=4:5
figure()
hold on;
w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(4/5*w1*t);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(4/5*w1*t+pi/4);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(4/5*w1*t+pi/3);
plot(x,y)

w1=sqrt(w0^2-r^2);
x=A*exp(-r*t).*cos(w1*t);
y=A*exp(-r*t).*cos(4/5*w1*t+pi/2);
plot(x,y)