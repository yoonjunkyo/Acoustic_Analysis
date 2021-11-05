clear all
theta = input('Ether angle : ');
theta = 90 - theta;
theta = theta * pi / 180;
z0 = input('Ether depth : ');
dz = 5;
a = sin(theta)/cspeed(z0);
z = z0;
r = 0;
while (r<40000)
  b = (cspeed(z + dz) - cspeed(z)) / dz;
  w = cspeed(z) / b;
  signz = sign(z+dz);
  if sign(z+dz) == 0
    signz = 1;
  endif
  
  dz = dz * signz * sign(1-(a*b*(w+dz))^2);
  
  if dz > 0
    r = r +abs(1/(a*b))*(sqrt(1-(a*b*w)^2)-sqrt(1-(a*b*(w+dz))^2));
  elseif dz < 0
    r = r + abs(1/(a*b))*(-sqrt(1-(a*b*w)^2)+sqrt(1-(a*b*(w+dz))^2));
  endif
  z = z+dz;
  
  plot(r, z, 'k.')
  hold on
  drawnow
  set(gca, 'XDir', 'norm', 'YDir', 'rev')

end