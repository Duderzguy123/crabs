function [xCrab,yCrab,thetaCrab] = moveCrab (cmd,x,y,theta, size, height, width)

  %function moves the crab sideways, swims the crab backwards and rotates
  %this crab can swim backwards
  % "j" = move left "l" = move right "k" = swim back "i" rotate clockwise "," rotate left


  %space and angle resolutions
dTheta = pi/8;
  dStep = 20;
  %moveleft
  if (cmd == "j");
    xCrab = x + dStep*sin(theta);
    yCrab = y - dStep*cos(theta);
    thetaCrab = theta;


##  if isOnMap (x, y, width,height,boarder)
##xCrab = x;
##yCrab = y;
   %move right
   elseif (cmd == "l");
    xCrab = x - dStep*sin(theta);
    yCrab = y + dStep*cos(theta);
    thetaCrab = theta;

   % swim back
   elseif (cmd == "k")
    xCrab = x - dStep*sin(theta);
    yCrab = y - dStep*cos(theta);
    thetaCrab = theta;
  % rotate right
  elseif (cmd == "i");
    xCrab = x;
    yCrab = y;
    thetaCrab = theta + dTheta;
    %rotate left
  elseif (cmd == ",");
    xCrab = x;
    yCrab = y;
    thetaCrab = theta - dTheta;
  else
    xCrab = x;
    yCrab = y;
    thetaCrab = theta;

    endif
endfunction













##function [ xCrab, yCrab, thetaCrab ] = moveCrab( cmd, x, y, theta );
##dTheta = pi/6;
##dStep = 50;
##if( cmd == "j" ) %move forward
##xCrab = x + dStep*sin(theta);
##yCrab = y - dStep*cos(theta);
##thetaCrab = theta;
##elseif ( cmd == "l" ) %turn right
##xCrab =  x - dStep*sin(theta);
##yCrab = y - dStep*cos(theta);
##thetaCrab = theta;
##elseif ( cmd == "a" ) %turn left
##xCrab = x;
##yCrab = y;
##thetaCrab = theta ;
##else % if none of the cases are true, set the new variables equal to the old inputs.
##xCrab = x;
##yCrab = y;
##thetaCrab = theta;
##endif
##endfunction

