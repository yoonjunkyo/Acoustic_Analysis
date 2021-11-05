clear all
close all
clc

theta = input('Angle : ');
theta = po-theta;
theta = theta * pi / 180;
z0 = input('Depth : ');
dz = 5;
a = sin(theta) / cspeed(z0);
z = z0;
r = 0;

for m = 1 : 500
  b = cspeed(z + dz) - cspeed(z1) / dz;
  w = cspeed(z) / b;
  signz = sign(z +dz);
  
  if sign(z + dz) ==0
    signz = 1;
  end
dz = dz * signz * sign(1 - (a * b * (w + dz))^2);
if dz > 0
  r = r + abs(1 / (a * b)) * (sqrt(1 - (a * b * w)^2) - sqrt(1 - (a * b * (w + dz)^2)));
else if dz < 0
  r = r + abs(1 / (a * b)) * (- sqrt(1 - (a * b * w)^2) + sqrt(1 - (a * b * (w + dz)^2)));
end

z = z + dz;
signz = sign(z + dz);
if sign(z + dz) == 0
  signz = 1;
end

plot(r, z, 'k.')
hold on
drawnow
set(gca, 'XDir', 'norm', 'YDir', 'rev')