function [xJelly,yJelly,thetaJelly] = moveJelly (level,x,y, theta, size, height, width)

  %function moves the Jellyfish, swims the Jellyfish down constantly and then jumps up
  %jellyfish starts at the top then moves down
  % no inputs work

% xjelly, yjelly and thetajelly to return values in output
  %space and angle resolutions

  dStep = 20+level;

  %moves the jellyfish down by d step in pixels, and thats set to y and itll continue
  %move jelly
  yJelly = dStep + y;
  xJelly = x;
  thetaJelly = theta;



  if (yJelly > height - 10 * size);

  yJelly = size;

  %rand gives a random number between 0 and 1, and multiplied by the width of the map
  xJelly = rand * width;

  endif
  endfunction

