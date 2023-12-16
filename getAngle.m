function theta = getAngle (xNet, yNet, xCrab, yCrab)

  %This function serves to take distance from net and crab location and wants to move it away

  xDanger = xNet - xCrab;
  yDanger = yNet - yCrab;

  if (xDanger == 0 || yDanger == 0) % on axis

    if (xDanger ==0 && yDanger == 0)
      theta = 0;

      elseif(xDanger !=0 && yDanger == 0)
      if(xDanger > 0)
      theta=0;
    else
        theta = pi;
      endif


      elseif(yDanger !=0 && xDanger == 0)
      if(yDanger>0
      theta = pi/2;
    else
      theta=3*pi/2;
      endif


    endif

    else %not on coordinate axis

    alpha = atan(abs(yDanger/xDanger));

    if (xDanger > 0 && yDanger > 0) %quad 1
      theta = alpha;
    elseif(xDanger < 0 && yDanger > 0) %quad 2
    theta = pi-alpha;
  elseif (xDanger < 0 && yDanger < 0) %quad 3
    theta = pi+alpha;
  else
    theta = 2*pi - alpha; %quad 4

    endif

    endif

  endif

  endfunction
