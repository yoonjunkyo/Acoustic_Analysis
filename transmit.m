 function y=transmit(z1,z2,z3,X)
 y=(2*exp(-1i*X))./...
 ((1+z1/z3)*cos(X)-1i*(z2/z3+z1/z3)*sin(X));