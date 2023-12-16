function [xBubble,yBubble] = moveBubble (x,y,xMouth,yMouth)

 %move bubble is repurposed movejelly

  step = 25;

  %moves the jellyfish down by d step in pixels, and thats set to y and itll continue
  %move jelly
  yBubble = y - step;
  xBubble = x;


  if (yBubble < 0);

  yBubble = yMouth;
  xBubble = xMouth;
pause(.15);
  endif
  endfunction

