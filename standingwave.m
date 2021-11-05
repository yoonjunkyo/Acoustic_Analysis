function standingwave(n_x,n_y)

x=linspace(0,1,1000); #0����1������ 1000��� x�� ����
y=linspace(0,1,1000); #0����1������ 1000��� y�� ����

xarr = repmat(x,1000,1); #
yarr = repmat(y',1,1000);

z=sin(pi*n_x*xarr).*sin(pi*n_y*yarr);

figure()
imagesc(real(z))
title(['mode = ',num2str(n_x),' : ',num2str(n_y)])
axis equal
##saveas(gcf,['mode = ',num2str(n_x),num2str(n_y)],'jpg')
end