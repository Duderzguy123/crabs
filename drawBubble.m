function bubbleGraphics = drawBubble(xCenter,yCenter,radius)

  theta=[0:20:360]*pi/180;

  x = xCenter + radius*cos(theta);
  y = yCenter + radius*sin(theta);

  bubbleGraphics = plot (x,y,'w');
  set(bubbleGraphics,"LineWidth",3);

  endfunction
