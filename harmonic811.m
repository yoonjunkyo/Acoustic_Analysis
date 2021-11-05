clear all
close all

w0=1;
A=10;

r=1;
f1 =input('enter frequency1 : ' ); # f입력받기,
f2 = input('enter frequency2 : ' );
d = input('enter phase : ' );
d*pi;
t = linspace(0,100,1000);
#f1:f2=1:1
figure()
hold on;
#w1=sqrt(w0^2-r^2);
w1=1;
x=A*exp(-r*t).*cos(2*f1*pi*t);
y=A*exp(-r*t).*cos(2*f2*pi*t+d);
plot(x,y)

axis equal;

#종파에서 damping이 존재한다? >> 그래프의 형태는 ?