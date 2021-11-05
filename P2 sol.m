theta = linspace(0, pi / 2, 90);

for i = 1 : 8
  c1 = 1500;
  c2 = 1509;
  p1 = 1000;
  p2 = 1500;
##  
##  theta = input("Enter the angle : ") 
##  theta=90-theta;
##  theta=theta*pi/180;

  theta = i * 2;
  theta = 90 - theta;
  theta = theta * pi / 180;
  
  z0 = 80;
  dz = 5;
  a = sin(theta) / cspeed(z0);
  z = z0;
  r = 0;
  
  while (r < 60000)
    b = (cspeed(z + dz) - cspeed(z)) / dz;
    w = cspeed(z) / b;
    signz = sign(z + dz);
    if (sign(z + dz) == 0)
      signz = 1;
    end
    dz = dz * signz * sign(1 - (a * b * (w + dz))^2);
    if (dz > 0)
      r = r + abs(1 / (a * b)) * (sqrt(1 - (a * b * w)^2) - sqrt(1 - (a * b * (w + dz))^2));
    elseif (dz < 0)
      r = r + abs(1 / (a * b)) * (-sqrt(1 - (a * b * w)^2) + sqrt(1 - (a * b * (w + dz))^2));
    end
    z = z + dz
    plot(r, z, 'k.')
    hold on
    drawnow
    set(gca, 'XDir', 'norm', 'YDir', 'rev')
  endwhile
end