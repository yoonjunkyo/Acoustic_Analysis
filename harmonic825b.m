clear all
close all
clc

Fig=figure(1)

set(Fig,'position',[100 200 400 800])
c=jet(15);

for m=1:15
patch([0 2*m 2*m 0],[m-1 m-1 m m],c(m,:),'EdgeColor','none')
hold on
end

A=imread('car.jpg')
image([22 24],[19 17],A);
text(5,7.5,'car')