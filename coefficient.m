function [r,t,Ri,Ti,Rp,Tp] = coefficient(rho1,c1,rho2,c2,theta1)

  
  theta2=asin(c2/c1*sin(theta1));
  z1=rho1*c1;
  z2=rho2*c2;
  r=((z2.*cos(theta1)-z1.*cos(theta2))./(z2.*cos(theta1)+z1.*cos(theta2)));
  t=(2*z2.*cos(theta1))./(z2.*cos(theta1)+z1.*cos(theta2));
  Ri=(abs(r)).^2;
  Ti=z1/z2*(abs(t)).^2;
  Rp=Ri;
  Tp=(2*z1*z2.*cos(theta1).*cos(theta2))./((z2.*cos(theta1)+z1.*cos(theta2)).^2);