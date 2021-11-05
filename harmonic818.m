clear all
close all
clc
                                
[xx,yy] = meshgrid(0:0.01:1,0:0.01:1); #0부터1까지 0.01간격으로 나눠줌
m = [1:4];
n = [1:4];

for ii=1:4
  for jj=1:4
    figure 
    imagesc((sin(m(ii)*pi*xx)).*(sin(m(jj)*pi*yy)));
##    image: 2차원 이미지 생성 data값에 따라 color가 정해져 있음
##    imagesc: 0부터 1까지 최대 최소에 따라 color를 형성
    colormap(bone) #색감바꿔줌 or jet 대신 gray, bone
    title(['m=',num2str(m(ii)),' n=',num2str(m(jj))])
  end
end