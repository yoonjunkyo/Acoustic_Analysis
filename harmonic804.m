clear all
close all
t = linspace(0,8,100);
w0=2*pi*0.25;
d=pi/4
u=cos(w0*t+d);

figure()
plot(t,u,'r')
grid on
xlabel('Time(second)')
ylabel('Displacement')
hold on;


##
##v=-w0*sin(w0*t+d);
##plot(t,v,'b')
##grid on
##xlabel('Time(second)')
##ylabel('velocity')
##hold on;
##
##a=-w0*w0*cos(w0*t+d);
##plot(t,a,'g')
##grid on
##xlabel('Time(second)')
##ylabel('Acceleration')
##hold on;
