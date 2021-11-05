clear all
close all
clc
                                
[xx,yy] = meshgrid(0:0.01:1,0:0.01:1); #0����1���� 0.01�������� ������
m = [1:4];
n = [1:4];

for ii=1:4
  for jj=1:4
    figure 
    imagesc((sin(m(ii)*pi*xx)).*(sin(m(jj)*pi*yy)));
##    image: 2���� �̹��� ���� data���� ���� color�� ������ ����
##    imagesc: 0���� 1���� �ִ� �ּҿ� ���� color�� ����
    colormap(bone) #�����ٲ��� or jet ��� gray, bone
    title(['m=',num2str(m(ii)),' n=',num2str(m(jj))])
  end
end