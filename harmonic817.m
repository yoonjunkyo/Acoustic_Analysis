clear all
close all
clc

for i = 1:4
  for j = 1:4
    standingwave(i,j)
  end
end


##n_x=input('enter n_x : '); #x�� ������ n�� ���� ����
##n_y=input('enter n_y : '); #y�� ������ n�� ���� ����
##
##x=linspace(0,1,1000); #0����1������ 1000��� x�� ����
##y=linspace(0,1,1000); #0����1������ 1000��� y�� ����
##
##xarr = repmat(x,1000,1); #
##yarr = repmat(y',1,1000);
##
##z=sin(pi*n_x*xarr).*sin(pi*n_y*yarr);
##
##figure()
##imagesc(real(z))
##axis equal