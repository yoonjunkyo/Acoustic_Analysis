clear all
close all
clc

for i = 1:4
  for j = 1:4
    standingwave(i,j)
  end
end


##n_x=input('enter n_x : '); #x축 정상파 n배 진동 지정
##n_y=input('enter n_y : '); #y축 정상파 n배 진동 지정
##
##x=linspace(0,1,1000); #0부터1까지를 1000등분 x에 저장
##y=linspace(0,1,1000); #0부터1까지를 1000등분 y에 저장
##
##xarr = repmat(x,1000,1); #
##yarr = repmat(y',1,1000);
##
##z=sin(pi*n_x*xarr).*sin(pi*n_y*yarr);
##
##figure()
##imagesc(real(z))
##axis equal